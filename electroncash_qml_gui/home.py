import sys
from PyQt6.QtCore import QObject, Qt, QUrl
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine
from homeModel import DataHolder


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    # Create a QML engine
    screen = QGuiApplication.primaryScreen()
    screen_geometry = screen.availableGeometry()
    screen_height = screen_geometry.height()
    engine = QQmlApplicationEngine()  

    data_holder = DataHolder()
    data_holder.update_SizePerent(screen_height / 1115)
    engine.rootContext().setContextProperty("DataHolder", data_holder)
    # Load the QML file
    engine.load(QUrl.fromLocalFile("home.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    homeObject = engine.rootObjects()[0]
    sys.exit(app.exec())
