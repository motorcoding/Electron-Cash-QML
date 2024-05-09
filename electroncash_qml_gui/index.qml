import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

RowLayout {
    id: rowsub
    // width: 1500
    // height: 700
    anchors.fill: parent
    anchors.leftMargin: 1
    anchors.rightMargin: -1
    anchors.topMargin: 0
    anchors.bottomMargin: 0
    spacing: 47
    signal switchToSendPage()
    signal switchToRequestPage()
    Rectangle {
        id: table
        Layout.fillWidth: true
        Layout.maximumWidth: rowsub.width * 0.55
        Layout.fillHeight: true
        Layout.maximumHeight: rowsub.height - 50
        Layout.leftMargin: 26
        anchors.verticalCenter: parent.verticalCenter
        radius: 80
        Rectangle {
            width: parent.width
            height: parent.height
            color: "black"
            opacity: 0.04
            radius: 80
        }

        Rectangle {
          width: parent.width - 2
          height: parent.height - 2
          color: "black"
          opacity: 0.03
          radius: 80
          anchors.centerIn: parent
        }

        Rectangle {
            width: parent.width - 4
            height: parent.height - 4
            color: "black"
            opacity: 0.02
            radius: 80
            anchors.centerIn: parent
        }

        Rectangle {
            width: parent.width - 6
            height: parent.height - 6
            color: "black"
            opacity: 0.01
            radius: 80
            anchors.centerIn: parent
        }

        Rectangle {
            width: parent.width - 10
            height: parent.height - 10
            color: "white"
            radius: 80
            anchors.centerIn: parent
            Column {
                id: column
                anchors.fill: parent
                spacing: 10
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    topPadding: 20 * parent.height / 797
                    font.family: "Poppins"
                    font.styleName: "normal"
                    color: "#0056C0"
                    font.weight: 600
                    font.pixelSize: 36 * parent.height / 797
                    text: "TRANSACTION HISTORY"
                }
                ListModel {
                    id: tablemodel
                    ListElement {
                        date: "DATE"
                        amount: "AMOUNT"
                        balance: "BALANCE"
                        note: "NOTE"
                        confirmations: "CONFIRMATIONS"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }

                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }
                    ListElement {
                        date: "0-28-2023"
                        amount: "56870"
                        balance: "56870"
                        note: "1 NOTE"
                        confirmations: "56870"
                    }

                }
                ListView {
                    id: list1
                    width: parent.width
                    height: parent.height * 0.78
                    clip: true
                    visible: true
                    anchors.top: parent.top
                    anchors.topMargin: 85 * parent.height / 797
                    interactive: true
                    flickableDirection: Flickable.AutoFlickDirection
                    boundsMovement: Flickable.StopAtBounds
                    boundsBehavior: Flickable.StopAtBounds
                    anchors.horizontalCenter: parent.horizontalCenter
                    model: tablemodel
                    ScrollBar.vertical: ScrollBar {
                        policy: ScrollBar.AsNeeded // or ScrollBar.AlwaysOn
                    }
                    delegate: Row {
                        width: parent.width
                        height: list1.height / 11
                        spacing: 0
                        Rectangle{
                            width: parent.width / 5 - 10
                            height: list1.height / 11
                            color: {
                                if (index === 0) {
                                    return "#dddddd"; // Set color of the first row
                                } else {
                                    return index % 2 === 1 ? "#efefef" : "#f6f6f6"; // Alternating colors for other rows
                                }
                            }
                            Text {
                                anchors.centerIn: parent
                                text: date
                                font.italic: index === 0 ? false : true
                                font.pixelSize: index === 0 ? 15.7 : 15
                                lineHeight: 1.4
                                font.weight: index === 0 ? 400 : 700
                                font.family: "Poppins"
                            }
                        }
                        Rectangle{
                            width: parent.width / 5 - 10
                            height: list1.height / 11
                            color: {
                                if (index === 0) {
                                    return "#dddddd"; // Set color of the first row
                                } else {
                                    return index % 2 === 1 ? "#efefef" : "#f6f6f6"; // Alternating colors for other rows
                                }
                            }
                            Text {
                                anchors.centerIn: parent
                                text: amount
                                font.italic: index === 0 ? false : true
                                font.pixelSize: index === 0 ? 15.7 : 15
                                lineHeight: 1.4
                                font.weight: index === 0 ? 400 : 700
                                font.family: "Poppins"
                            }
                        }
                        Rectangle{
                            width: parent.width / 5 - 10
                            height: list1.height / 11
                            color: {
                                if (index === 0) {
                                    return "#dddddd"; // Set color of the first row
                                } else {
                                    return index % 2 === 1 ? "#efefef" : "#f6f6f6"; // Alternating colors for other rows
                                }
                            }
                            Text {
                                anchors.centerIn: parent
                                text: balance
                                font.italic: index === 0 ? false : true
                                font.pixelSize: index === 0 ? 15.7 : 15
                                lineHeight: 1.4
                                font.weight: index === 0 ? 400 : 700
                                font.family: "Poppins"
                            }
                        }
                        Rectangle{
                            width: parent.width / 5 - 10
                            height: list1.height / 11
                            color: {
                                if (index === 0) {
                                    return "#dddddd"; // Set color of the first row
                                } else {
                                    return index % 2 === 1 ? "#efefef" : "#f6f6f6"; // Alternating colors for other rows
                                }
                            }
                            Text {
                                anchors.centerIn: parent
                                text: note
                                font.italic: index === 0 ? false : true
                                font.pixelSize: index === 0 ? 15.7 : 15
                                lineHeight: 1.4
                                font.weight: index === 0 ? 400 : 700
                                font.family: "Poppins"
                            }
                        }
                        Rectangle{
                            width: parent.width / 5 + 40
                            height: list1.height / 11
                            color: {
                                if (index === 0) {
                                    return "#dddddd"; // Set color of the first row
                                } else {
                                    return index % 2 === 1 ? "#efefef" : "#f6f6f6"; // Alternating colors for other rows
                                }
                            }
                            Text {
                                anchors.centerIn: parent
                                text: confirmations
                                font.italic: index === 0 ? false : true
                                font.pixelSize: index === 0 ? 15.7 : 15
                                lineHeight: 1.4
                                font.weight: index === 0 ? 400 : 700
                                font.family: "Poppins"
                            }
                        }
                    }
                }
            }
        }
    }
    Column {
        id: rowsub2
        Layout.fillWidth: true
        Layout.maximumWidth: rowsub.width * 0.38
        Layout.fillHeight: true
        Layout.maximumHeight: rowsub.height - 50
        Layout.rightMargin: 47
        spacing: 41
        Rectangle {
            width: parent.width
            height: parent.height * 0.83
            radius: 80
            Rectangle {
                width: parent.width
                height: parent.height
                color: "black"
                opacity: 0.04
                radius: 80
            }

            Rectangle {
              width: parent.width - 2
              height: parent.height - 2
              color: "black"
              opacity: 0.03
              radius: 80
              anchors.centerIn: parent
            }

            Rectangle {
                width: parent.width - 4
                height: parent.height - 4
                color: "black"
                opacity: 0.02
                radius: 80
                anchors.centerIn: parent
            }

            Rectangle {
                width: parent.width - 6
                height: parent.height - 6
                color: "black"
                opacity: 0.01
                radius: 80
                anchors.centerIn: parent
            }

            Rectangle{
                color: "#efefef"
                width: parent.width - 10
                height: parent.height - 10
                radius: 80
                anchors.centerIn: parent
                Column{
                    anchors.fill: parent
                    spacing: 15
                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        topPadding: 20 * (rowsub2.height - 10) / 797
                        font.family: "Poppins"
                        font.styleName: "normal"
                        color: "#0056C0"
                        font.weight: 600
                        font.pixelSize: 36 * (rowsub2.height - 10) / 797
                        text: "RECEIVING ADDRESS"
                        font.underline: true
                    }
                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.family: "Poppins"
                        font.styleName: "normal"
                        color: "#000000"
                        font.weight: 400
                        font.pixelSize: 24 * (rowsub2.height - 10) / 797
                        text: "qqsdg4oi8jnsp84napag98n9gjn0ag9hu4"
                    }

                    Image {
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: 300 * (rowsub2.height - 10) / 797
                        height: 50 * (rowsub2.height - 10) / 797
                        source: "resource/copy.png" // Provide the path to your image file

                    }

                    Image {
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: 350 * (rowsub2.height - 10) / 797
                        height: 350 * (rowsub2.height - 10) / 797
                        source: "resource/qrcode 3.png" // Provide the path to your image file
                    }
                    Item {
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: 365 * (rowsub2.height - 10) / 797
                        height: 70 * (rowsub2.height - 10) / 797

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: "black"
                            opacity: 0.05
                            radius: 80
                        }

                        Rectangle {
                          width: parent.width - 2
                          height: parent.height - 2
                          color: "black"
                          opacity: 0.04
                          radius: 80
                          anchors.centerIn: parent
                        }

                        Rectangle {
                            width: parent.width - 4
                            height: parent.height - 4
                            color: "black"
                            opacity: 0.03
                            radius: 80
                            anchors.centerIn: parent
                        }
                        Rectangle {
                            id: mainRect
                            width: parent.width - 8
                            height: parent.height - 8
                            radius: 30
                            color: mouse1.hovered ? "#03479A" : "#0056C0"
                            anchors.centerIn: parent
                            HoverHandler {
                                id: mouse1
                                acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                                cursorShape: Qt.PointingHandCursor
                            }
                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    outlineRect.border.color = "#0056C0"; // Change outline color when clicked
                                }
                                onReleased: {
                                    outlineRect.border.color = "transparent";
                                }
                                onClicked: {
                                    switchToRequestPage()
                                }
                            }
                        }
                        Rectangle {
                            id: outlineRect
                            width: mainRect.width + 8 // Adjust the outline thickness as needed
                            height: mainRect.height + 8 // Adjust the outline thickness as needed
                            color: "transparent"
                            radius: 30
                            border.color: "transparent" // Initial color of the outline
                            border.width: 2 // Outline width

                        }

                        Text {
                            anchors.centerIn: parent
                            text: "CREATE A PAYMENT REQUEST"
                            font.weight: 700
                            color: "white"
                            font.family: "Nexa Heavy"
                            font.pixelSize: 20 * (rowsub2.height - 10) / 797
                            font.styleName: "normal"
                            lineHeight: 1.2
                        }
                    }

                }
            }
        }
        Item {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 590 * (rowsub2.height - 10) / 797
            height: 70 * (rowsub2.height - 10) / 797

            Rectangle {
                id: mainRect1
                width: parent.width - 8
                height: parent.height - 8
                anchors.centerIn: parent
                radius: 30
                color: mouse2.hovered ? "#03479A" : "#0056C0"
                property var homeComponent: null
                HoverHandler {
                    id: mouse2
                    acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                    cursorShape: Qt.PointingHandCursor
                }
                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        outlineRect1.border.color = "#0056C0"; // Change outline color when clicked                             
                    }
                    onReleased: {
                        outlineRect1.border.color = "transparent";
                    }
                    onClicked: {
                        switchToSendPage()      
                    }
                }
            }

            Rectangle {
                id: outlineRect1
                width: mainRect1.width + 8 // Adjust the outline thickness as needed
                height: mainRect1.height + 8 // Adjust the outline thickness as needed
                color: "transparent"
                radius: 30
                border.color: "transparent" // Initial color of the outline
                border.width: 2 // Outline width

            }


            Text {
                anchors.centerIn: parent
                text: "SEND A TRANSACTION"
                font.weight: 700
                color: "white"
                font.family: "Nexa Heavy"
                font.pixelSize: 26 * (rowsub2.height - 10) / 797
                font.styleName: "normal"
                lineHeight: 1.2
            }
        }

    }
}

