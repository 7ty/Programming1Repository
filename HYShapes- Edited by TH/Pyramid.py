class Pyramid:
    def __init__(self,pyramidL,pyramidW,pyramidH):
        self.pyramidL = int(pyramidL)
        self.pyramidW = int(pyramidW)
        self.pyramidH = int(pyramidH)

    def calcVol(self,pyramidL,pyramidW,pyramidH):
        print("The volume is: " + str((pyramidL*pyramidW*pyramidH)/3))

    def calcSA(self,pyramidL,pyramidW,pyramidH):
        print("The surface area is: " + str((pyramidL*pyramidW)+(pyramidL*(((pyramidW/2)**2)+pyramidH**2)**0.5)+(pyramidW*(((pyramidL/2)**2)+pyramidH**2)**0.5)))
