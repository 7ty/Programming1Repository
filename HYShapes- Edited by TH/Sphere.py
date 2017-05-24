import math
class Sphere:
    def __init__(self,sphereR):
        self.sphereR = int(sphereR)

    def calcVol(self,sphereR):
        print sphereR
        print("The volume is: " + str(((4/3)*math.pi)*sphereR**3))

    def calcSA(self,sphereR):
        print("The surface area is: " + str(4*math.pi*sphereR**2))
            
