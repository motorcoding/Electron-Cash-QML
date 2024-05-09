import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
Rectangle {
    id: sendmain
    // width: 1500
    // height: 850
    anchors.fill: parent
   // margins: 32
    color: "#f6f6f6"

    ColumnLayout {

       anchors.fill: parent
       anchors.leftMargin: 32
       anchors.rightMargin: 26
       anchors.topMargin: 34 * sendmain.height / 850
       anchors.bottomMargin: 34 * sendmain.height / 850
       spacing: 45 * sendmain.height / 850
        Text{
            text: "Send"
            font.family: "Open Sans"
            font.weight: 700
            font.pixelSize: 50 * sendmain.height / 850
            color: "#0056C0"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Column {
            Layout.fillWidth: true
            Layout.maximumWidth: parent.width
            Layout.fillHeight: true
            Rectangle {
                width: parent.width
                height: 73 * sendmain.height / 850
                color: "#C4C4C4"
                Text {
                    x: 23 * sendmain.width / 1500
                    font.family: "Open Sans"
                    font.weight: 400
                    font.pixelSize: 26 * sendmain.height / 850
                    text: "Send to"
                    font.letterSpacing: -0.2
                    color: "#3D4A5C"
                    font.underline: true
                    anchors.verticalCenter: parent.verticalCenter
                }
                Rectangle {
                    x: 152 * sendmain.width / 1500
                    width: 988 * sendmain.width / 1500
                    height: 46 * sendmain.height / 850
                    anchors.verticalCenter: parent.verticalCenter
                    border.width: 1
                    border.color: "#c4c4c4"
                    radius: 6
                    TextInput {
                        width: parent.width - 15
                        height: parent.height - 15
                        font.pixelSize: 20 * sendmain.height / 850
                        anchors.centerIn: parent
                    }
                    Row {
                        spacing: 20
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        anchors.rightMargin: 16
                        Image{
                            width: 20 * sendmain.height / 850
                            height: 20 * sendmain.height / 850
                            source: "resource/QR.png"
                        }
                        Image {
                            width: 20 * sendmain.height / 850
                            height: 20 * sendmain.height / 850
                            source: "resource/folder.png"
                        }
                    }
                }
                Item {
                    x: 1167 * sendmain.width / 1500
                    width: 205 * sendmain.width / 1500 + 8
                    height: 45 * sendmain.height / 850 + 8
                    anchors.verticalCenter: parent.verticalCenter
                    Rectangle {
                        id: paytomanyMainRect
                        width: parent.width - 8
                        height: parent.height - 8
                        anchors.centerIn: parent
                        radius: 6
                        color: paytomany.hovered ? "#03479A" : "#3378CD"
                        HoverHandler {
                            id: paytomany
                            acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                            cursorShape: Qt.PointingHandCursor
                        }
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                paytomanyOutlineRect.border.color = "#03479A"; // Change outline color when clicked
                            }
                            onReleased: {
                                paytomanyOutlineRect.border.color = "transparent";
                            }
                        }
                    }
                    Rectangle {
                        id: paytomanyOutlineRect
                        width: paytomanyMainRect.width + 8 // Adjust the outline thickness as needed
                        height: paytomanyMainRect.height + 8 // Adjust the outline thickness as needed
                        color: "transparent"
                        radius: 6
                        border.color: "transparent" // Initial color of the outline
                        border.width: 2 // Outline width

                    }
                    Text {
                        text: "Pay to many"
                        font.family: "Nexa Regular"
                        font.weight: 400
                        font.pixelSize: 30 * sendmain.height / 850
                        color: "#ffffff"
                        font.underline: true
                        anchors.centerIn: parent
                    }
                }
            }

            Rectangle {
                width: parent.width
                height: 89 * sendmain.height / 850
                color: "#f6f6f6"
                Text {
                    x: 23 * sendmain.width / 1500
                    font.family: "Open Sans"
                    font.weight: 400
                    font.pixelSize: 26 * sendmain.height / 850
                    text: "Amount"
                    font.letterSpacing: -0.2
                    color: "#3D4A5C"
                    font.underline: true
                    anchors.verticalCenter: parent.verticalCenter
                }
                RowLayout {
                    x: 152 * sendmain.width / 1500
                    anchors.verticalCenter: parent.verticalCenter
                    width: 988 * sendmain.width / 1500
                    height: 46 * sendmain.height / 850
                    spacing: 11
                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.maximumWidth: 470 * sendmain.width / 1500
                        Layout.maximumHeight:  parent.height
                        border.width: 1
                        border.color: "#c4c4c4"
                        radius: 6
                        TextInput {
                            width: parent.width - 15
                            height: parent.height - 15
                            font.pixelSize: 20 * sendmain.height / 850
                            anchors.centerIn: parent
                        }
                        Row {
                            spacing: 13
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 16
                            Text{
                                text: "BCH"
                                font.family: "Open Sans"
                                font.weight: 400
                                font.pixelSize: 14
                                font.letterSpacing: -0.2
                                color: "#8897AE"
                            }

                            Image {
                                width: 20 * sendmain.height / 850
                                height: 20 * sendmain.height / 850
                                source: "resource/BCH.png"
                            }
                        }
                    }
                    Image {
                        width: 18 * sendmain.height / 850
                        height: 18 * sendmain.height / 850
                        source: "resource/exchange.png"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.maximumWidth: 470 * sendmain.width / 1500
                        Layout.maximumHeight:  parent.height
                        border.width: 1
                        border.color: "#c4c4c4"
                        radius: 6
                        TextInput {
                            width: parent.width - 15
                            height: parent.height - 15
                            font.pixelSize: 20 * sendmain.height / 850
                            anchors.centerIn: parent
                        }
                        Row {
                            spacing: 13
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 16
                            Text{
                                text: "USD"
                                font.family: "Open Sans"
                                font.weight: 400
                                font.pixelSize: 14
                                font.letterSpacing: -0.2
                                color: "#8897AE"
                            }

                            Image {
                                width: 20 * sendmain.height / 850
                                height: 20 * sendmain.height / 850
                                source: "resource/USD.png"
                            }
                        }
                    }
                }
                Item {
                    x: 1167 * sendmain.width / 1500
                    width: 205 * sendmain.width / 1500 + 8
                    height: 45 * sendmain.height / 850 + 8
                    anchors.verticalCenter: parent.verticalCenter
                    Rectangle {
                        id: sendbtnMainRect
                        width: parent.width - 8
                        height: parent.height - 8
                        anchors.centerIn: parent
                        radius: 6
                        color: sendbtn.hovered ? "#03479A" : "#3378CD"
                        HoverHandler {
                            id: sendbtn
                            acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                            cursorShape: Qt.PointingHandCursor
                        }
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                sendbtnOutlineRect.border.color = "#03479A"; // Change outline color when clicked
                            }
                            onReleased: {
                                sendbtnOutlineRect.border.color = "transparent";
                            }
                        }
                    }
                    Rectangle {
                        id: sendbtnOutlineRect
                        width: sendbtnMainRect.width + 8 // Adjust the outline thickness as needed
                        height: sendbtnMainRect.height + 8 // Adjust the outline thickness as needed
                        color: "transparent"
                        radius: 6
                        border.color: "transparent" // Initial color of the outline
                        border.width: 2 // Outline width

                    }
                    Text {
                        text: "Send Tokens"
                        font.family: "Nexa Regular"
                        font.weight: 400
                        font.pixelSize: 30 * sendmain.height / 850
                        color: "#ffffff"
                        font.underline: true
                        anchors.centerIn: parent
                    }
                }

            }
            Rectangle {
                width: parent.width
                height: 71 * sendmain.height / 850
                color: "#C4C4C4"
                Text {
                    x: 23 * sendmain.width / 1500
                    font.family: "Open Sans"
                    font.weight: 400
                    font.pixelSize: 26 * sendmain.height / 850
                    text: "Note"
                    font.letterSpacing: -0.2
                    color: "#3D4A5C"
                    font.underline: true
                    anchors.verticalCenter: parent.verticalCenter
                }
                Rectangle {
                    x: 152 * sendmain.width / 1500
                    width: 988 * sendmain.width / 1500
                    height: 46 * sendmain.height / 850
                    anchors.verticalCenter: parent.verticalCenter
                    border.width: 1
                    border.color: "#c4c4c4"
                    radius: 6
                    TextInput {
                        width: parent.width - 15
                        height: parent.height - 15
                        font.pixelSize: 20 * sendmain.height / 850
                        anchors.centerIn: parent
                    }
                }
            }
            Rectangle {
                width: parent.width - 23 * sendmain.width / 1500
                height: 89 * sendmain.height / 850
                color: "#f6f6f6"
                x: 23 * sendmain.width / 1500
                Row{
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 8
                    Text{
                        text: "Advanced Options"
                        font.family: "Open Sans"
                        font.weight: 400
                        font.pixelSize: 20 * sendmain.height / 850
                        font.letterSpacing: -0.2
                        color: "#000000"
                    }
                    Image{
                        anchors.verticalCenter: parent.verticalCenter
                        width: 10
                        height: 10
                        source: "resource/down.png"
                    }
                }
            }
            Rectangle {
                width: parent.width - 23 * sendmain.width / 1500
                height: 71 * sendmain.height / 850
                color: "#C4C4C4"
                x: 23 * sendmain.width / 1500
                Text {
                    x: 23 * sendmain.width / 1500
                    font.family: "Open Sans"
                    font.weight: 400
                    font.pixelSize: 26 * sendmain.height / 850
                    text: "OP_Return"
                    font.letterSpacing: -0.2
                    color: "#3D4A5C"
                    anchors.verticalCenter: parent.verticalCenter
                }
                Rectangle {
                    x: 175 * sendmain.width / 1500
                    width: 988 * sendmain.width / 1500
                    height: 46 * sendmain.height / 850
                    anchors.verticalCenter: parent.verticalCenter
                    border.width: 1
                    border.color: "#c4c4c4"
                    radius: 6
                    TextInput {
                        width: parent.width - 15
                        height: parent.height - 15
                        font.pixelSize: 20 * sendmain.height / 850
                        anchors.centerIn: parent
                    }
                }
                Row{
                    anchors.verticalCenter: parent.verticalCenter
                    x: 1183 * sendmain.width / 1500
                    spacing: 12
                    Text{
                        text: "Raw Hex Script?"
                        font.family: "Open Sans"
                        font.weight: 400
                        font.pixelSize: 20 * sendmain.height / 850
                        font.letterSpacing: -0.2
                        font.underline: true
                        color: "#2D3643"
                    }
                    Rectangle {
                        anchors.verticalCenter: parent.verticalCenter
                        width: 16
                        height: 16
                        radius: 4
                        color: "#F9FAFB"
                        border.width: 1
                        border.color: "#3378CD"
                        CheckBox {
                            anchors.centerIn: parent
                            width: 12
                            height: 12
                            font.pointSize: 9
                            baselineOffset: 25
                            clip: true
                            checked: false // Initial state of the CheckBox
                            onCheckedChanged: {
                            }
                        }
                    }
                }
            }
            Rectangle {
                width: parent.width - 23 * sendmain.width / 1500
                height: 89 * sendmain.height / 850
                color: "#f6f6f6"
                x: 23 * sendmain.width / 1500
                Text {
                    x: 23 * sendmain.width / 1500
                    font.family: "Open Sans"
                    font.weight: 400
                    font.pixelSize: 26 * sendmain.height / 850
                    text: "Custo Fee"
                    font.letterSpacing: -0.2
                    color: "#3D4A5C"
                    font.underline: true
                    anchors.verticalCenter: parent.verticalCenter
                }
                RowLayout {
                    x: 175 * sendmain.width / 1500
                    anchors.verticalCenter: parent.verticalCenter
                    width: 988 * sendmain.width / 1500
                    height: 46 * sendmain.height / 850
                    spacing: 11
                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.maximumWidth: 470 * sendmain.width / 1500
                        Layout.maximumHeight:  parent.height
                        border.width: 1
                        border.color: "#c4c4c4"
                        radius: 6
                        TextInput {
                            width: parent.width - 15
                            height: parent.height - 15
                            font.pixelSize: 20 * sendmain.height / 850
                            anchors.centerIn: parent
                        }
                        Row {
                            spacing: 13
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 16
                            Text{
                                text: "sat/byte"
                                font.family: "Open Sans"
                                font.weight: 400
                                font.pixelSize: 14
                                font.letterSpacing: -0.2
                                font.underline: true
                                color: "#8897AE"
                            }
                        }
                    }
                    Image {
                        width: 18 * sendmain.height / 850
                        height: 18 * sendmain.height / 850
                        source: "resource/exchange.png"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.maximumWidth: 470 * sendmain.width / 1500
                        Layout.maximumHeight:  parent.height
                        border.width: 1
                        border.color: "#c4c4c4"
                        radius: 6
                        TextInput {
                            width: parent.width - 15
                            height: parent.height - 15
                            font.pixelSize: 20 * sendmain.height / 850
                            anchors.centerIn: parent
                        }
                        Row {
                            spacing: 13
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 16
                            Text{
                                text: "BCH"
                                font.family: "Open Sans"
                                font.weight: 400
                                font.pixelSize: 14
                                font.letterSpacing: -0.2
                                color: "#8897AE"
                            }

                            Image {
                                width: 20 * sendmain.height / 850
                                height: 20 * sendmain.height / 850
                                source: "resource/BCH.png"
                            }
                        }
                    }
                }
            }
        }
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 24
            Column {
                spacing: 9
                Item {
                    width: 277 * sendmain.width / 1500 + 8
                    height: 41 * sendmain.height / 850 + 8
                    Rectangle {
                        id: clearbtnMainRect
                        width: parent.width - 8
                        height: parent.height - 8
                        anchors.centerIn: parent
                        border.width: 1
                        border.color: clearbtn.hovered ? "transparent" : "#FF5542"
                        radius: 6
                        color: clearbtn.hovered ? "#FFC8C1" : "#ffffff"
                        HoverHandler {
                            id: clearbtn
                            acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                            cursorShape: Qt.PointingHandCursor
                        }
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                clearbtnOutlineRect.border.color = "#FF2C14"; // Change outline color when clicked
                            }
                            onReleased: {
                                clearbtnOutlineRect.border.color = "transparent";
                            }
                        }
                    }
                    Rectangle {
                        id: clearbtnOutlineRect
                        width: clearbtnMainRect.width + 8 // Adjust the outline thickness as needed
                        height: clearbtnMainRect.height + 8 // Adjust the outline thickness as needed
                        color: "transparent"
                        radius: 6
                        border.color: "transparent" // Initial color of the outline
                        border.width: 2 // Outline width
                    }
                    Text {
                        anchors.centerIn: parent
                        text: "Clear"
                        font.family: "Inter"
                        font.weight: 500
                        font.pixelSize: 16 * sendmain.height / 850
                        color: clearbtn.hovered ? "#FF2C14" : "#FF5542"
                    }
                }
                Item {
                    width: 277 * sendmain.width / 1500 + 8
                    height: 41 * sendmain.height / 850 + 8
                    Rectangle {
                        id: previewbtnMainRect
                        width: parent.width - 8
                        height: parent.height - 8
                        anchors.centerIn: parent
                        border.width: 1
                        border.color: previewbtn.hovered ? "transparent" : "#3378CD"
                        radius: 6
                        color: previewbtn.hovered ? "#C7DDF7" : "#ffffff"
                        HoverHandler {
                            id: previewbtn
                            acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                            cursorShape: Qt.PointingHandCursor
                        }
                        MouseArea {
                            anchors.fill: parent
                            onPressed: {
                                previewbtnOutlineRect.border.color = "#0056C0"; // Change outline color when clicked
                            }
                            onReleased: {
                                previewbtnOutlineRect.border.color = "transparent";
                            }
                        }
                    }
                    Rectangle {
                        id: previewbtnOutlineRect
                        width: previewbtnMainRect.width + 8 // Adjust the outline thickness as needed
                        height: previewbtnMainRect.height + 8 // Adjust the outline thickness as needed
                        color: "transparent"
                        radius: 6
                        border.color: "transparent" // Initial color of the outline
                        border.width: 2 // Outline width
                    }
                    Text {
                        anchors.centerIn: parent
                        text: "Preview Transaction"
                        font.family: "Inter"
                        font.weight: 500
                        font.pixelSize: 16 * sendmain.height / 850
                        color: clearbtn.hovered ? "#0056C0" : "#3378CD"
                    }
                }
            }
            Item {
                width: 316 * sendmain.width / 1500 + 16
                height: 90 * sendmain.height / 850 + 16
                Rectangle {
                    id: sendbtnMainRect1
                    width: parent.width - 8
                    height: parent.height - 8
                    anchors.centerIn: parent
                    radius: 6
                    color: sendbtn1.hovered ? "#03479A" : "#3378CD"
                    HoverHandler {
                        id: sendbtn1
                        acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
                        cursorShape: Qt.PointingHandCursor
                    }
                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            sendbtnOutlineRect1.border.color = "#03479A"; // Change outline color when clicked
                        }
                        onReleased: {
                            sendbtnOutlineRect1.border.color = "transparent";
                        }
                    }
                }
                Rectangle {
                    id: sendbtnOutlineRect1
                    width: sendbtnMainRect1.width + 8 // Adjust the outline thickness as needed
                    height: sendbtnMainRect1.height + 8 // Adjust the outline thickness as needed
                    color: "transparent"
                    radius: 6
                    border.color: "transparent" // Initial color of the outline
                    border.width: 2 // Outline width

                }
                Text {
                    anchors.centerIn: parent
                    text: "Send"
                    font.family: "Inter"
                    font.weight: 500
                    font.pixelSize: 30 * sendmain.height / 850
                    color: "#ffffff"
                }
            }
        }

    }
}
