from sklearn.ensemble import RandomForestClassifier
import itertools
import json
from uchat import WordTokenize, BagOfWord
import numpy as np
import pickle
from sklearn.metrics import classification_report, confusion_matrix,ConfusionMatrixDisplay
import matplotlib.pyplot as plt
from keras.utils import to_categorical
import datetime
from sklearn.linear_model import LogisticRegression

with open('contentVn.json', 'r', encoding="utf-8") as c:
    contents = json.load(c)
with open('test_contentVn.json', 'r', encoding="utf-8") as t:
    test_contents = json.load(t)

all_words = []
tags = []
xy = []
xy_test = []
punctuation = ['?', '.', ',', '!', ':', '/']

p = {}
resp = {}
for content in contents['intents']:

    p[content['tag']]=len(content['patterns'])
    resp[content['tag']]=len(content['responses'])

    tag = content['tag']
    tags.append(tag)
    for pattern in content['patterns']:
        w = WordTokenize(pattern)
        all_words.extend(w)
        xy.append((w, tag))
for test_content in test_contents['intents']:
    tag = test_content['tag']
    for test_pattern in test_content['patterns']:
        t_w = WordTokenize(test_pattern)
        xy_test.append((t_w, tag))

all_words = sorted(set([w.lower() for w in all_words if w not in punctuation]))
tags = sorted(set(tags))
# print(len(tags), "Tag:")
# print(tags)
# print("\n Patterns: \n",p)
# print ("\n Responses: \n",resp)

X_train = []
y_train = []
X_test = []
y_test = []

for (pattern_sentence, tag) in xy:
    bag = BagOfWord(pattern_sentence, all_words)
    label = tags.index(tag)
    X_train.append(bag)
    y_train.append(label)

for (pattern_test, tag) in xy_test:
    bag = BagOfWord(pattern_test, all_words)
    label = tags.index(tag)
    X_test.append(bag)
    y_test.append(label)

X_train = np.array(X_train)
y_train = np.array(y_train)
X_test = np.array(X_test)
y_test = np.array(y_test)


# Define your hyperparameters
hyperparameters = {
    'n_estimators': 100,
    'min_samples_split': 2,
    'min_samples_leaf': 1
}
# Model:
model = RandomForestClassifier(n_estimators=hyperparameters['n_estimators'], 
                              min_samples_split=hyperparameters['min_samples_split'], 
                              min_samples_leaf=hyperparameters['min_samples_leaf'], 
                              random_state=5)
# Training:
model.fit(X_train, y_train)
# Saving model:
file_name = 'store/models/Random_Forest_model.pkl'
with open(file_name, 'wb') as file:
    pickle.dump(model, file)


# model=LogisticRegression(solver='lbfgs',multi_class ='multinomial',penalty='l2',C=1)
# # Training:
# model.fit(X_train, y_train)
# # Saving model:
# file_name = 'store/models/Logistic_Regression_model.pkl'
# with open(file_name, 'wb') as file:
#     pickle.dump(model, file)


# # Testing:
# prediction_test = model.predict(X_test)
# prediction_train = model.predict(X_train)
# print(X_train.shape)
# print(X_test.shape)

# target_names = [tags[i] for i in range(len(tags))]

# training_report = classification_report(y_train, model.predict(X_train), digits=5, target_names=target_names)
# test_report = classification_report(y_test, model.predict(X_test),digits=5, target_names=target_names)

# print(training_report)
# print(test_report)



