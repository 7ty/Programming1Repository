class Box:
    def __init__(self,boxL,boxW,boxH):
        self.boxL = int(boxL)
        self.boxW = int(boxW)
        self.boxH = int(boxH)

    def calcVol(self,boxL,boxW,boxH):
        print("The volume is: " + str(boxL*boxW*boxH))

    def calcSA(self,boxL,boxW,boxH):
        print("The surface area is: " + str(2*(boxW*boxL+boxH*boxL+boxH*boxW)))
