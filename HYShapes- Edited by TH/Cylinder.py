import math
class Cyl:
    def __init__(self,cylR, cylH):
        self.cylR = int(cylR)
        self.cylH = int(cylH)
    def calcVol(self, cylR,cylH):
        print('The Volume is' + math.pi*(cylR^2)*cylH)
    def calcSA(self, cylR, cylH):
        print('The Surface Area is' + 2*math.pi*cylR*cylH+2*math.pi*(cylR^2))
    


