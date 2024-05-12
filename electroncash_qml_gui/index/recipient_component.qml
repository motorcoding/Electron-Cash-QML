import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    width: 825
    height: 263
    color: "#F0F5FB"
    border.width: 1
    border.color: "#3378CD"
    radius: 6
    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: 30
        anchors.rightMargin: 30
        anchors.topMargin: 33
        anchors.bottomMargin: 25
        spacing: 10
        Text {
            text: "Recipient 1"
            font.family: "Open Sans"
            font.weight: 600
            font.pixelSize: 14
            font.letterSpacing: -0.25
            color: "#000000"
        }
        Text {
            text: "Address"
            font.family: "Open Sans"
            font.weight: 400
            font.pixelSize: 13
            font.letterSpacing: -0.2
            color: "#3D4A5C"
        }
        Rectangle {
            width: parent.width
            height: 42
            anchors.verticalCenter: parent.verticalCenter
            border.width: 1
            border.color: "#000000"
            radius: 6
            TextInput {
                width: parent.width - 100
                height: parent.height - 15
                font.pixelSize: 14
                anchors {
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                    leftMargin: 14
                }
            }
            Row {
                spacing: 20
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 16
                Image{
                    width: 20
                    height: 20
                    source: "../resource/QR.png"
                }
                Image {
                    width: 20
                    height: 20
                    source: "../resource/folder.png"
                }
            }
        }
    }
}
