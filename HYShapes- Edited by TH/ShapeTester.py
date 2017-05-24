#Howard Ying, Period 3A, Completed 02-17-2017
#Edited by Tyler Herron 3-A, 02-24-17
from Box import Box
from Sphere import Sphere
from Pyramid import Pyramid
from Cylinder import Cyl

print("Welcome to ShapeTester! \nThis is designed to find the Surface Area and Volume of a few shapes.")
print("Enter [1] to enter Box mode. \nEnter [2] to enter Sphere mode. \nEnter [3] to enter Pyramid mode. \nEnter [4] to enter Cylinder mode.")
choice = input("Enter choice: ")

if choice == 1:
    print("Box mode has been selected.")
    box1=Box(input("Enter length: "),input("Enter width: "),input("Enter height: "))
    box1.calcVol(box1.boxL,box1.boxW,box1.boxH)
    box1.calcSA(box1.boxL,box1.boxW,box1.boxH)
    
elif choice == 2:
    print("Sphere mode has been selected.")
    sphere1=Sphere(input("Enter radius: "))
    sphere1.calcVol(sphere1.sphereR)
    sphere1.calcSA(sphere1.sphereR)

elif choice == 3:
    print("Pyramid mode has been selected.")
    pyramid1=Pyramid(input("Enter length: "),input("Enter width: "),input("Enter height: "))
    pyramid1.calcVol(pyramid1.pyramidL,pyramid1.pyramidW,pyramid1.pyramidH)
    pyramid1.calcSA(pyramid1.pyramidL,pyramid1.pyramidW,pyramid1.pyramidH)
    
elif choise == 4:
    print('Cylinder mode has been selected')
    cyl1 = Cyl(input('enter radius'),input('enter height'))
    cyl1.calcVol(cyl1.cylR,cyl1.cylH)
    cyl1.calcSA(cyl1.cylR,cyl1.cylH)
    
else:
    print("An invalid choice was entered.")
