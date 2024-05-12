import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    id: requestmain
    anchors.fill: parent
   // margins: 32
    color: "#f6f6f6"
    Column {
       anchors.fill: parent
       anchors.leftMargin: 79 * requestmain.width / 1500
       anchors.rightMargin: 42 * requestmain.width / 1500
       anchors.topMargin: 50 * requestmain.height / 850
       Text {
           text: "Request Payment"
           font.family: "Open Sans"
           font.weight: 700
           font.pixelSize: 50  * requestmain.height / 850
           anchors.horizontalCenter: parent.horizontalCenter
           color: "#0056C0"
       }
       Row {
           width: parent.width
           height: 455 * requestmain.height / 850
           spacing: 35
           Image {
               width: 455 * requestmain.width / 1500
               height: 455 * requestmain.height / 850
               source: "../resource/request qr.png"
           }
           Column {
               width: 862 * requestmain.width / 1500
               height: 380 * requestmain.height / 850
               anchors.verticalCenter: parent.verticalCenter
               Rectangle {
                   width: parent.width
                   height: 82 * requestmain.height / 850
                   color: "#C4C4C4"
                   Text {
                       x: 20 * requestmain.width / 1500
                       font.family: "Open Sans"
                       font.weight: 400
                       font.pixelSize: 26 * requestmain.height / 850
                       text: "Payment URL"
                       font.letterSpacing: -0.2
                       color: "#3D4A5C"
                       font.underline: true
                       anchors.verticalCenter: parent.verticalCenter
                   }
                   Rectangle {
                       x: 221 * requestmain.width / 1500
                       width: 622 * requestmain.width / 1500
                       height: 46 * requestmain.height / 850
                       anchors.verticalCenter: parent.verticalCenter
                       border.width: 1
                       border.color: "#c4c4c4"
                       radius: 6
                       TextInput {
                           width: parent.width - 15
                           height: parent.height - 15
                           font.pixelSize: 20 * requestmain.height / 850
                           anchors.centerIn: parent
                       }
                   }
               }
               Rectangle {
                   width: parent.width
                   height: 78 * requestmain.height / 850
                   color: "#f6f6f6"
                   Text {
                       x: 20 * requestmain.width / 1500
                       font.family: "Open Sans"
                       font.weight: 400
                       font.pixelSize: 26 * requestmain.height / 850
                       text: "Amount"
                       font.letterSpacing: -0.2
                       color: "#3D4A5C"
                       font.underline: true
                       anchors.verticalCenter: parent.verticalCenter
                   }
                   RowLayout {
                       x: 221 * requestmain.width / 1500
                       anchors.verticalCenter: parent.verticalCenter
                       width: 622 * requestmain.width / 1500
                       height: 46 * requestmain.height / 850
                       spacing: 11
                       Rectangle {
                           Layout.fillWidth: true
                           Layout.fillHeight: true
                           Layout.maximumWidth: 470 * requestmain.width / 1500
                           Layout.maximumHeight:  parent.height
                           border.width: 1
                           border.color: "#c4c4c4"
                           radius: 6
                           TextInput {
                               width: parent.width - 15
                               height: parent.height - 15
                               font.pixelSize: 20 * requestmain.height / 850
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
                                   width: 20 * requestmain.height / 850
                                   height: 20 * requestmain.height / 850
                                   source: "../resource/BCH.png"
                               }
                           }
                       }
                       Image {
                           width: 18 * requestmain.height / 850
                           height: 18 * requestmain.height / 850
                           source: "../resource/exchange.png"
                           anchors.verticalCenter: parent.verticalCenter
                       }
                       Rectangle {
                           Layout.fillWidth: true
                           Layout.fillHeight: true
                           Layout.maximumWidth: 470 * requestmain.width / 1500
                           Layout.maximumHeight:  parent.height
                           border.width: 1
                           border.color: "#c4c4c4"
                           radius: 6
                           TextInput {
                               width: parent.width - 15
                               height: parent.height - 15
                               font.pixelSize: 20 * requestmain.height / 850
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
                                   width: 20 * requestmain.height / 850
                                   height: 20 * requestmain.height / 850
                                   source: "../resource/USD.png"
                               }
                           }
                       }
                   }
               }
               Rectangle {
                   width: parent.width
                   height: 74 * requestmain.height / 850
                   color: "#C4C4C4"
                   Text {
                       x: 20 * requestmain.width / 1500
                       font.family: "Open Sans"
                       font.weight: 400
                       font.pixelSize: 26 * requestmain.height / 850
                       text: "Expiration"
                       font.letterSpacing: -0.2
                       color: "#3D4A5C"
                       anchors.verticalCenter: parent.verticalCenter
                   }
                   ComboBox {
                       id: comboBox
                       x: 221 * requestmain.width / 1500
                       width: 174 * requestmain.width / 1500
                       height: 56 * requestmain.height / 850
                       anchors.verticalCenter: parent.verticalCenter
                       model: ["Never Expires", "1 hour", "1 Day", "1 Week", "Custom"] // Define the dropdown options
                       currentIndex: 0 // Set the initial selected option index

                       property Text coverText: Text {
                           text: comboBox.currentText
                           font.family: "Open Sans"
                           font.weight: 400
                           font.letterSpacing: -0.3
                           font.pixelSize: 18 * requestmain.height / 850
                           color: "#1B4DFF"
                           verticalAlignment: Text.AlignVCenter
                           horizontalAlignment: Text.AlignHCenter
                       }
                       contentItem: comboBox.coverText
                       onCurrentIndexChanged: {
                           comboBox.contentText.text = comboBox.coverText

                       }
                       background: Rectangle {
                           implicitWidth: control.width // Make the background match the ComboBox width
                           implicitHeight: control.height // Make the background match the ComboBox height
                           color: "white"
                           border.width: 1
                           border.color: "#0055BF"
                           radius: 6
                       }
                       indicator: Image {
                           width: 11
                           height: 4
                           source: "../resource/dropdown.png"
                           anchors.right: parent.right
                           anchors.rightMargin: 20 * requestmain.width / 1500
                           anchors.verticalCenter: parent.verticalCenter
                       }
                   }

                   ComboBox {
                       id: comboBox1
                       visible: comboBox.currentIndex == 4 ? true : false
                       x: 411 * requestmain.width / 1500
                       width: 141 * requestmain.width / 1500
                       height: 56 * requestmain.height / 850
                       anchors.verticalCenter: parent.verticalCenter
                       model: ["Hours", "Days", "Weeks"] // Define the dropdown options
                       currentIndex: 0 // Set the initial selected option index

                       property Text coverText: Text {
                           text: comboBox1.currentText
                           font.family: "Open Sans"
                           font.weight: 400
                           font.letterSpacing: -0.3
                           font.pixelSize: 18 * requestmain.height / 850
                           color: "#1B4DFF"
                           verticalAlignment: Text.AlignVCenter
                           horizontalAlignment: Text.AlignHCenter
                       }
                       contentItem: comboBox1.coverText
                       onCurrentIndexChanged: {
                           comboBox1.contentText.text = comboBox1.coverText
                       }
                       background: Rectangle {
                           implicitWidth: control.width // Make the background match the ComboBox width
                           implicitHeight: control.height // Make the background match the ComboBox height
                           color: "transparent"
                           border.width: 1
                           border.color: "#0055BF"
                           radius: 6
                       }
                       indicator: Image {
                           width: 11
                           height: 4
                           source: "../resource/dropdown.png"
                           anchors.right: parent.right
                           anchors.rightMargin: 20 * requestmain.width / 1500
                           anchors.verticalCenter: parent.verticalCenter
                       }
                   }
                   Rectangle {
                       id: expirevalue
                       x: 568 * requestmain.width / 1500
                       width: 141 * requestmain.width / 1500
                       height: 56 * requestmain.height / 850
                       visible: comboBox.currentIndex == 4 ? true : false
                       color: "transparent"
                       anchors.verticalCenter: parent.verticalCenter
                       border.width: 1
                       border.color: "#8897AE"
                       radius: 6
                       TextInput {
                           width: parent.width - 35
                           height: parent.height - 35
                           PlaceholderText{
                               id: placeholder
                               text: "Enter Value"
                               font.family: "Open Sans"
                               font.weight: 400
                               font.pixelSize: 14
                               color: "#8897AE"
                               font.letterSpacing: -0.3
                               anchors.verticalCenter: parent.verticalCenter
                           }
                           onTextChanged: {
                               // Check if the text is empty and hide the placeholderText accordingly
                               if (text.length > 0)
                                   placeholder.text = ""
                               else
                                   placeholder.text = "Enter Value"
                           }
                           font.pixelSize: 15 * requestmain.height / 850
                           anchors.centerIn: parent
                       }
                   }
               }
               Rectangle {
                   width: parent.width
                   height: 68 * requestmain.height / 850
                   color: "#f6f6f6"
                   Text {
                       x: 20 * requestmain.width / 1500
                       font.family: "Open Sans"
                       font.weight: 400
                       font.pixelSize: 26 * requestmain.height / 850
                       text: "Description"
                       font.letterSpacing: -0.2
                       color: "#3D4A5C"
                       font.underline: true
                       anchors.verticalCenter: parent.verticalCenter
                   }
                   Rectangle {
                       x: 221 * requestmain.width / 1500
                       width: 622 * requestmain.width / 1500
                       height: 46 * requestmain.height / 850
                       anchors.verticalCenter: parent.verticalCenter
                       border.width: 1
                       border.color: "#c4c4c4"
                       radius: 6
                       TextInput {
                           width: parent.width - 15
                           height: parent.height - 15
                           font.pixelSize: 20 * requestmain.height / 850
                           anchors.centerIn: parent
                       }
                   }
               }
               Rectangle {
                   width: parent.width - 23 * requestmain.width / 1500
                   height: 71 * requestmain.height / 850
                   color: "#f6f6f6"
                   Text {
                       x: 20 * requestmain.width / 1500
                       font.family: "Open Sans"
                       font.weight: 400
                       font.pixelSize: 26 * requestmain.height / 850
                       text: "OP_Return"
                       font.letterSpacing: -0.2
                       color: "#3D4A5C"
                       anchors.verticalCenter: parent.verticalCenter
                   }
                   Rectangle {
                       x: 221 * requestmain.width / 1500
                       width: 434 * requestmain.width / 1500
                       height: 46 * requestmain.height / 850
                       anchors.verticalCenter: parent.verticalCenter
                       border.width: 1
                       border.color: "#c4c4c4"
                       radius: 6
                       TextInput {
                           width: parent.width - 15
                           height: parent.height - 15
                           font.pixelSize: 20 * requestmain.height / 850
                           anchors.centerIn: parent
                       }
                   }
                   Row{
                       anchors.verticalCenter: parent.verticalCenter
                       x: 675 * requestmain.width / 1500
                       spacing: 12
                       Text{
                           text: "Raw Hex Script?"
                           font.family: "Open Sans"
                           font.weight: 400
                           font.pixelSize: 20 * requestmain.height / 850
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
           }
       }
    }
}
