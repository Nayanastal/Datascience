
import os
import pandas as pd
from sklearn.neighbors import KNeighborsClassifier
food = pd.read_csv("food.csv")
tomato = pd.DataFrame({
    "ingredient": ["tomato"],
    "sweetness": [6],
    "crunchiness": [4]
})
food1 = food.iloc[:, 1:3]
tomato1 = tomato.iloc[:, 1:3]
y = food["FoodType"]
k = int(input("Enter the value of k: "))
knn = KNeighborsClassifier(n_neighbors=k)
knn.fit(food1, y)
pred = knn.predict(tomato1)
print("Predicted Food Type of Tomato:")
print(pred[0])
