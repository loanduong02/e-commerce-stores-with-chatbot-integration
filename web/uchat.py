import re
import numpy as np
from underthesea import word_tokenize

#patter=re.compile(r'(?i)\b[a-záàảãạăắằẳẵặâấầẩẫậéèẻẽẹêếềểễệóòỏõọôốồổỗởỡợíìỉĩịúùủũụưứừửữựýỳỷỹỵộơớờđ]+\b')
# def WordTokenize(word):
#     w=patter.findall(word)
#     return w

def WordTokenize(row):
    return word_tokenize(row)

def BagOfWord(word,ListWord):
    bag=np.zeros(len(ListWord))
    w=[i.lower() for i in word]
    for idx,val in enumerate(ListWord):
        if val in w:
            bag[idx]=1.0
    return bag

def main():
#     s="Xin chào mọi người"
#     s=tokenizer(s)
#     listword=["chào","chiều","người","xin"]
#     print(s)
#     print(np.array(BagOfWord(s,listword)))
#     return
    a = "em hỏi cái này được không ạ?"
    print(a)
    a = WordTokenize(a)
    print(a)

    words = ["hi", "chào", "tôi", "bạn", "ăn", "bai","ơi"]
    sentence = ["chào", "hỏi", "có", "bạn"]
    bag = BagOfWord(sentence, words)
    print(words)
    print(sentence)
    print(bag)

if __name__=="__main__":
    main()
