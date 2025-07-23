# Program 15 - Translation Matrix
# -------------------------------
import numpy

def translationMatrix(tx=0, ty=0, tz=0):
    return numpy.matrix([
        [1, 0, 0, tx],
        [0, 1, 0, ty],
        [0, 0, 1, tz],
        [0, 0, 0, 1]
    ])

matrix = translationMatrix(1, 1, 1)
print("Translation Matrix:")
print(matrix)

# Program 15 - Rotation Matrix about X axis
# -----------------------------------------
def rotationMatrixX(degree):
    theta = numpy.radians(degree)
    c, s = numpy.cos(theta), numpy.sin(theta)
    return numpy.matrix([
        [1, 0, 0, 0],
        [0, c, -s, 0],
        [0, s, c, 0],
        [0, 0, 0, 1]
    ])

matrix = rotationMatrixX(30)
print("\nRotation Matrix about X axis:")
print(matrix)

# Program 15 - Rotation Matrix about Y axis
# -----------------------------------------
def rotationMatrixY(degree):
    theta = numpy.radians(degree)
    c, s = numpy.cos(theta), numpy.sin(theta)
    return numpy.matrix([
        [c, 0, s, 0],
        [0, 1, 0, 0],
        [-s, 0, c, 0],
        [0, 0, 0, 1]
    ])

matrix = rotationMatrixY(30)
print("\nRotation Matrix about Y axis:")
print(matrix)

# Program 15 - Rotation Matrix about Z axis
# -----------------------------------------
def rotationMatrixZ(degree):
    theta = numpy.radians(degree)
    c, s = numpy.cos(theta), numpy.sin(theta)
    return numpy.matrix([
        [c, -s, 0, 0],
        [s, c, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])

matrix = rotationMatrixZ(30)
print("\nRotation Matrix about Z axis:")
print(matrix)

# Program 15 - Scaling Matrix
# ---------------------------
def scalingMatrix(sx=1, sy=1, sz=1):
    return numpy.matrix([
        [sx, 0,  0,  0],
        [0, sy,  0,  0],
        [0,  0, sz,  0],
        [0,  0,  0,  1]
    ])

matrix = scalingMatrix(2, 2, 2)
print("\nScaling Matrix:")
print(matrix)


------------------------------------------------------------------------------------------------------------------------------



Translation Matrix:
[[1 0 0 1]
 [0 1 0 1]
 [0 0 1 1]
 [0 0 0 1]]

Rotation Matrix about X axis:
[[ 1.         0.         0.         0.       ]
 [ 0.         0.8660254 -0.5        0.       ]
 [ 0.         0.5        0.8660254  0.       ]
 [ 0.         0.         0.         1.       ]]

Rotation Matrix about Y axis:
[[ 0.8660254  0.         0.5        0.       ]
 [ 0.         1.         0.         0.       ]
 [-0.5        0.         0.8660254  0.       ]
 [ 0.         0.         0.         1.       ]]

Rotation Matrix about Z axis:
[[ 0.8660254 -0.5        0.         0.       ]
 [ 0.5        0.8660254  0.         0.       ]
 [ 0.         0.         1.         0.       ]
 [ 0.         0.         0.         1.       ]]

Scaling Matrix:
[[2 0 0 0]
 [0 2 0 0]
 [0 0 2 0]
 [0 0 0 1]]

