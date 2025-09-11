from matplotlib import pyplot
import pandas

df = pandas.read_csv('C:/Users/Admin/Desktop/Datascience/iris.csv')

fig, ax = pyplot.subplots(1, 1)

colors = {'Iris-setosa': 'red', 'Iris-versicolor': 'green', 'Iris-virginica': 'blue'}
grouped = df.groupby('species')

for key, group in grouped:
    group.plot(ax=ax, kind='scatter', x='petal.length', y='petal.width',
               label=key, color=colors[key])

ax.set_title("Scatter Plot")
ax.set_xlabel('Petal Length')
ax.set_ylabel('Petal Width')

pyplot.show()
