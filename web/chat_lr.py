import json
import random
from uchat import BagOfWord, WordTokenize
import pickle
from training_lr1 import file_name, all_words, tags
import numpy as np
import os
import mysql.connector

file_name = 'store/models/Random_Forest_model.pkl'
# file_name = 'store/models/Logistic_Regression_model.pkl'

with open('contentVn.json', 'r',encoding='utf8') as json_data:
    contents = json.load(json_data)
with open(file_name, 'rb') as file:
    loaded_model = pickle.load(file)


def count_products():
    db_config = {
        'host': 'localhost',
        'user': 'root',
        'database': 'webbeauty_db',
        'port': '3306'
    }

    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()
    # Assuming you have a table named 'store_loaisanpham', adjust the table name as needed
    cursor.execute("SELECT lspTen FROM store_loaisanpham")
    product_names = cursor.fetchall()

    # Get the count of product categories
    cursor.execute("SELECT COUNT(*) FROM store_loaisanpham")
    count = cursor.fetchone()[0]
    conn.close()
    return count, product_names

def search_products_by_name(product_name):
    db_config = {
        'host': 'localhost',
        'user': 'root',
        'database': 'webbeauty_db',
        'port': '3306'
    }

    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor(dictionary=True)  # Set dictionary=True to fetch results as dictionaries

    # Assuming you have a table named 'store_sanpham' and want to select 'spTen'
    query = "SELECT spTen FROM store_sanpham WHERE spTen LIKE %s"
    cursor.execute(query, ('%' + ' '.join(product_name) + '%',))

    results = cursor.fetchall()

    conn.close()
    return results

def handle_search_products(tag, sentence):
    product_name = sentence 
    products = search_products_by_name(product_name)

    if products:
        return f"Cửa hàng có một số loại như : \n" +  '\n'.join([f"- {product['spTen']}" for product in products])
    else:
        return f"Không tìm thấy sản phẩm."

def handle_count_products(tag, sentence):
    product_count, product_names = count_products()
    return f" Có {product_count} loại sản phẩm. Dưới đây là tên các loại sản phẩm: \n" +  '\n'.join([f"- {product_name[0]}" for product_name in product_names])

def handle_default(tag, sentence):
    for content in contents['intents']:
        if tag == content['tag']:
            return random.choice(content['responses'])
    return "Xin lỗi, tôi không hiểu ý bạn. Bạn có thể thử lại hoặc hỏi điều khác."


def chat_bot_LR(sentence):
    sentence = WordTokenize(sentence)
    X = BagOfWord(sentence, all_words)
    X = np.asarray(X)
    X = np.reshape(X, (1, X.shape[0]))
    output = loaded_model.predict_proba(X)
    predict = np.argmax(output, axis=1)
    tag = tags[predict.item()]

    handlers = {
        'Hỏi sản phẩm kem chống nắng': handle_search_products,
        'Hỏi sản phẩm mặt nạ': handle_search_products,
        'Hỏi sản phẩm sữa rửa mặt': handle_search_products,
        'Hỏi sản phẩm kem dưỡng da': handle_search_products,

        'Hỏi sản phẩm chăm sóc cơ thể':handle_search_products,
        'Hỏi sản phẩm dưỡng thể':handle_search_products,
        'Hỏi sản phẩm làm sạch cơ thể' :handle_search_products,

        'Hỏi sản phẩm dầu gội':handle_search_products,
        'Hỏi sản phẩm dầu xả':handle_search_products,
        'Hỏi sản phẩm dưỡng tóc':handle_search_products,

        'Hỏi sản phẩm trang điểm mặt' :handle_search_products,
        'Hỏi sản phẩm trang điểm mắt' :handle_search_products,
        'Hỏi sản phẩm son môi' :handle_search_products,
        
        'Hỏi loại sản phẩm': handle_count_products,
        # Add more handlers as needed
    }

    response = handlers.get(tag, handle_default)(tag, sentence)
    return response


# def chat_bot_LR(sentence):
#     sentence = WordTokenize(sentence)
#     X = BagOfWord(sentence, all_words)
#     X = np.asarray(X)
#     X = np.reshape(X, (1, X.shape[0]))
#     output = loaded_model.predict_proba(X)
#     predict = np.argmax(output, axis=1)
#     tag = tags[predict.item()]
#     response = "Xin lỗi, tôi không hiểu ý bạn. Bạn có thể thử lại hoặc hỏi điều khác."

#     for content in contents['intents']:
#         if tag == content['tag']:
#             response = random.choice(content['responses'])
#             break
#     # print("Tag:", tag)
#     # print("Output:", output)
  
#     return response

# def main():
#     print("Chatbot: Chào bạn! Bạn có thể nhập 'exit' để thoát.")
    
#     while True:
#         user_input = input("Bạn: ")
#         if user_input.lower() in ['quit', 'exit', 'bye']:
#             print("Chatbot: Chào tạm biệt!")
#             break
        
#         response = chat_bot_LR(user_input)
#         print("Chatbot:", response)

# if __name__ == "__main__":
#     main()