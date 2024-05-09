from PyQt6.QtCore import QObject, pyqtProperty, pyqtSignal, pyqtSlot, QTimer

class DataHolder(QObject):
    def __init__(self):
        super().__init__()
        self.walletName = "default_wallet [standard]"
        self.BCHBalance = 0.8765324
        self.USDBalance = 601.5
        self.BCHSpend = 0.4592994
        self.USDSpend = 315.19
        self.netStatus = False
        self.cashStatus = False
        self.SizePercent = 1.0



    # Define a property to expose data to QML
    def update_SizePerent(self, newSize):
        self.SizePercent = newSize

    @pyqtProperty(float)
    def getSizePercent(self):
        return self.SizePercent

    @pyqtProperty(str)
    def getWalletName(self):
        return self.walletName
    
    @pyqtProperty(float)
    def getBCHBalance(self):
        return self.BCHBalance
    
    @pyqtProperty(float)
    def getUSDBalance(self):
        return self.USDBalance
    
    @pyqtProperty(float)
    def getBCHSpend(self):
        return self.BCHSpend
    
    @pyqtProperty(float)
    def getUSDSpend(self):
        return self.USDSpend
    
    @pyqtProperty(bool)
    def getNetworkStatus(self):
        return self.netStatus
    
    @pyqtProperty(bool)
    def getCashStatus(self):
        return self.cashStatus

  
    # Method to update the data
    @pyqtSlot(str)
    def updateData(self, new_data):
        self._data = new_data
        # Emit signal to notify QML about data change
        self.dataChanged.emit()

    # Define a signal to notify QML about data change
    dataChanged = pyqtSignal()
