import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    color: "#ffffff"
    width: 1724
    height: 1115
    title: "My Application"
    visibility: Window.FullScreen
    function switchToIndexPage() {
        switchPage.loadIndexPage();
    }   

    ColumnLayout {
        id: main
        anchors.fill: parent
        anchors.leftMargin: 1
        anchors.rightMargin: -1
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        spacing: 0
        Rectangle {
            color: 'white'
            Layout.fillWidth: true
            Layout.maximumWidth: parent.width
            Layout.fillHeight: true
            Layout.maximumHeight: 180 * DataHolder.getSizePercent
            Column {
                x: 20
                anchors.verticalCenter: parent.verticalCenter
                Text {
                    font.family: "Nexa Black"
                    font.styleName: "normal"
                    font.weight: 900
                    font.pixelSize: DataHolder.getBCHSpend ? 26 * DataHolder.getSizePercent : 34 * DataHolder.getSizePercent
                    lineHeight: 0.8
                    text: "BALANCE"
                }
                Text {
                    color: "#0056C0"
                    font.family: "Nexa Regular"
                    font.styleName: "normal"
                    font.weight: 400
                    font.pixelSize: DataHolder.getBCHSpend ? 33 * DataHolder.getSizePercent : 42 * DataHolder.getSizePercent
                    lineHeight: 1.2
                    text: DataHolder.getBCHBalance + " BCH ($" + DataHolder.getUSDBalance + ")"
                }
                Text {
                    font.family: "Nexa Black"
                    font.styleName: "normal"
                    font.weight: 900
                    font.pixelSize: 26 * DataHolder.getSizePercent
                    lineHeight: 0.8
                    text: DataHolder.getBCHSpend ? "SPENDABLE" : ""
                }
                Text {
                    color: "#0056C0"
                    font.family: "Nexa Regular"
                    font.styleName: "normal"
                    font.weight: 400
                    font.pixelSize: 33 * DataHolder.getSizePercent
                    lineHeight: 1.2
                    text: DataHolder.getBCHSpend ? DataHolder.getBCHSpend + " BCH ($" + DataHolder.getUSDSpend + ")" : ""
                }
            }

            Image {
                width: 372
                height: 92
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                source: "resource/Home Brand.png"
            }
            Column {
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 15
                Text {
                    font.family: "Nexa Black"
                    anchors.right: parent.right
                    font.styleName: "normal"
                    font.weight: 900
                    font.pixelSize: 35 * DataHolder.getSizePercent
                    lineHeight: 1.1
                    text: "NETWORK"
                }
                Row {
                   spacing: 5 // Adjust spacing between text and image
                   anchors.right: parent.right
                   Text {
                       color: "#0056C0"
                       font.family: "Nexa Regular"
                       font.styleName: "normal"
                       font.weight: 400
                       font.pixelSize: 25 * DataHolder.getSizePercent
                       lineHeight: 1.2
                       text: DataHolder.getNetworkStatus ? "CONNECTED" : "NOT CONNECTED"
                   }
                   Image {
                       source: "resource/Blue shape.png"
                       width: 13 // Adjust image width as needed
                       height: 13 // Adjust image height as needed
                       y: 8
                       //anchors.verticalCenter: parent.verticalCenter // Center the image vertically within the Row
                   }
                }
                Text {
                    font.family: "Nexa Black"
                    anchors.right: parent.right
                    font.styleName: "normal"
                    font.weight: 900
                    font.pixelSize: 35 * DataHolder.getSizePercent
                    lineHeight: 1.1
                    text: "CASHFUSION"
                }
                Row {
                   spacing: 5 // Adjust spacing between text and image
                   anchors.right: parent.right
                   Text {
                       color: "#0056C0"
                       font.family: "Nexa Regular"
                       font.styleName: "normal"
                       font.weight: 400
                       font.pixelSize: 25 * DataHolder.getSizePercent
                       lineHeight: 1.2
                       text: DataHolder.getCashStatus ? "ENABLED" : "DISABLED"
                   }
                   Image {
                       source: DataHolder.getCashStatus ? "resource/Blue shape.png" : "resource/Red shape.png"
                       width: 13 // Adjust image width as needed
                       height: 13 // Adjust image height as needed
                       y: 8
                       //anchors.verticalCenter: parent.verticalCenter // Center the image vertically within the Row
                   }
                }
            }
        }
        Rectangle {
            color: 'black'
            Layout.fillWidth: true
            Layout.maximumWidth: parent.width
            Layout.fillHeight: true
            Layout.maximumHeight: 74 * DataHolder.getSizePercent
            Text {
                color: "#ffffff"
                anchors.centerIn: parent
                text: DataHolder.getWalletName
                font.styleName: "normal"
                font.weight: 400
                font.pixelSize: 33 * DataHolder.getSizePercent
                lineHeight: 1.2
            }
        }
        Rectangle {
            color: 'white'
            Layout.fillWidth: true
            Layout.maximumWidth: parent.width
            Layout.fillHeight: true
            RowLayout{
                id: sub
                anchors.fill: parent
                anchors.leftMargin: 1
                anchors.rightMargin: -1
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.maximumWidth: 255 * DataHolder.getSizePercent
                    color: "#0056C0"
                    Rectangle {
                        width: parent.width * 0.8 // Line width is same as rectangle width
                        height: 2 // Line thickness
                        color: "white" // Line color
                        y: parent.height * 0.95 // Position the line vertically at 50 pixels from the top of the rectangle
                    }
                    Column {
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        spacing: 20
                        bottomPadding: 0.05 * parent.height
                        Item {
                            width: 220 * DataHolder.getSizePercent
                            height: 70 * DataHolder.getSizePercent

                            Rectangle {
                                anchors.fill: parent
                                width: parent.width
                                height: parent.height
                                color: "#0056C0"
                                border.color: mouse1.hovered ? "#FFE600" : "#0056C0"
                                border.width: 3
                                HoverHandler {
                                    id: mouse1
                                    acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                                    cursorShape: Qt.PointingHandCursor
                                }
                                MouseArea {
                                    anchors.fill: parent                                
                                    onClicked: {
                                        switchToIndexPage()
                                    }
                                }
                            }

                            Text {
                                anchors.centerIn: parent
                                text: "HOME"
                                font.weight: 900
                                color: "white"
                                font.family: "Nexa Heavy"
                                font.pixelSize: 24 * DataHolder.getSizePercent
                                leftPadding: 9
                                font.letterSpacing: 9
                                font.styleName: "normal"
                                lineHeight: 0.8
                            }
                            }

                            Item {
                                width: 220 * DataHolder.getSizePercent
                                height: 70 * DataHolder.getSizePercent

                                Rectangle {
                                    anchors.fill: parent
                                    color: "#0056C0"
                                    border.color: mouse2.hovered ? "#FFE600" : "#0056C0"
                                    border.width: 3
                                    HoverHandler {
                                        id: mouse2
                                        acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                                        cursorShape: Qt.PointingHandCursor
                                    }
                                }

                                Text {
                                    anchors.centerIn: parent
                                    text: "TOKENS"
                                    color: "white"
                                    font.weight: 900
                                    font.family: "Nexa Heavy"
                                    font.pixelSize: 24 * DataHolder.getSizePercent
                                    leftPadding: 9
                                    font.letterSpacing: 9
                                    font.styleName: "normal"
                                    lineHeight: 0.8
                                }
                            }
                            Item {
                                width: 220 * DataHolder.getSizePercent
                                height: 70 * DataHolder.getSizePercent

                                Rectangle {
                                    anchors.fill: parent
                                    color: "#0056C0"
                                    border.color: mouse3.hovered ? "#FFE600" : "#0056C0"
                                    border.width: 3
                                    HoverHandler {
                                        id: mouse3
                                        acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                                        cursorShape: Qt.PointingHandCursor
                                    }
                                }

                                Text {
                                    anchors.centerIn: parent
                                    text: "WALLET"
                                    color: "white"
                                    font.family: "Nexa Heavy"
                                    font.weight: 900
                                    font.pixelSize: 24 * DataHolder.getSizePercent
                                    leftPadding: 9
                                    font.letterSpacing: 9
                                    font.styleName: "normal"
                                    lineHeight: 0.8
                                }
                            }
                            Item {
                                width: 220 * DataHolder.getSizePercent
                                height: 70 * DataHolder.getSizePercent

                                Rectangle {
                                    anchors.fill: parent
                                    color: "#0056C0"
                                    border.color: mouse4.hovered ? "#FFE600" : "#0056C0"
                                    border.width: 3
                                    HoverHandler {
                                        id: mouse4
                                        acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                                        cursorShape: Qt.PointingHandCursor
                                    }
                                }

                                Text {
                                    anchors.centerIn: parent
                                    text: "TOOLS"
                                    color: "white"
                                    font.weight: 900
                                    font.family: "Nexa Heavy"
                                    font.pixelSize: 24 * DataHolder.getSizePercent
                                    leftPadding: 9
                                    font.letterSpacing: 9
                                    font.styleName: "normal"
                                    lineHeight: 0.8
                                }
                            }
                            Item {
                                width: 220 * DataHolder.getSizePercent
                                height: 70 * DataHolder.getSizePercent

                                Rectangle {
                                    anchors.fill: parent
                                    color: "#0056C0"
                                    border.color: mouse5.hovered ? "#FFE600" : "#0056C0"
                                    border.width: 3
                                    HoverHandler {
                                        id: mouse5
                                        acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                                        cursorShape: Qt.PointingHandCursor
                                    }
                                }

                                Text {
                                    anchors.centerIn: parent
                                    text: "SETTINGS"
                                    font.weight: 900
                                    color: "white"
                                    font.family: "Nexa Heavy"
                                    font.pixelSize: 24 * DataHolder.getSizePercent
                                    leftPadding: 9
                                    font.letterSpacing: 9
                                    font.styleName: "normal"
                                    lineHeight: 0.8
                                }
                            }
                            Item {
                                width: 220 * DataHolder.getSizePercent
                                height: 70 * DataHolder.getSizePercent

                                Rectangle {
                                    anchors.fill: parent
                                    color: "#0056C0"
                                    border.color: mouse6.hovered ? "#FFE600" : "#0056C0"
                                    border.width: 3
                                    HoverHandler {
                                        id: mouse6
                                        acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                                        cursorShape: Qt.PointingHandCursor
                                    }
                                }

                                Text {
                                    anchors.centerIn: parent
                                    text: "FILE"
                                    color: "white"
                                    font.family: "Nexa Heavy"
                                    font.pixelSize: 24 * DataHolder.getSizePercent
                                    font.weight: 900
                                    leftPadding: 9
                                    font.letterSpacing: 9
                                    font.styleName: "normal"
                                    lineHeight: 0.8
                                }
                            }
                    }
                }
                Item {
                    id: switchPage
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    property Item currentPage: null
                    Component.onCompleted: {
                        loadIndexPage()
                    }
                    function loadIndexPage() {
                        clearCurrentPage();
                        var component = Qt.createComponent("index.qml");
                        if (component.status === Component.Ready) {
                            var sourceItem = component.createObject(switchPage);
                            if (sourceItem === null) {
                                console.log("Error creating index.qml object");
                            } else {
                                // Connect to the signal emitted by index.qml
                                sourceItem.switchToSendPage.connect(loadSendPage)
                                sourceItem.switchToRequestPage.connect(loadRequestPage)
                                currentPage = sourceItem;
                            }
                        } else {
                            console.log("Error loading index.qml component:", component.errorString());
                        }
                    }

                    function loadSendPage() {
                        clearCurrentPage();
                        var component = Qt.createComponent("send.qml");
                        if (component.status === Component.Ready) {
                            var sourceItem = component.createObject(switchPage);
                            if (sourceItem === null) {
                                console.log("Error creating other.qml object");
                            } else {
                                // Disconnect from the signal emitted by index.qml
                                
                                currentPage = sourceItem;
                            }
                        } else {
                            console.log("Error loading other.qml component:", component.errorString());
                        }
                    }                             

                    function loadRequestPage() {
                        clearCurrentPage();
                        var component = Qt.createComponent("request.qml");
                        if (component.status === Component.Ready) {
                            var sourceItem = component.createObject(switchPage);
                            if (sourceItem === null) {
                                console.log("Error creating other.qml object");
                            } else {
                                // Disconnect from the signal emitted by index.qml
                                
                                currentPage = sourceItem;
                            }
                        } else {
                            console.log("Error loading other.qml component:", component.errorString());
                        }
                    }
                    function clearCurrentPage() {
                        if (currentPage !== null) {
                            currentPage.destroy(); // Destroy the current page
                            currentPage = null; // Reset the current page
                        }
                    }
                }                                        
            }
        }
    }
    
}

