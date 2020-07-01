import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("RoundButton")
    id:root

    property var value: 0

    Row {
        id: row
        width: 200
        height: 132
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        RoundButton {
            id: roundButton
            text: "+"
            font.pointSize: 16
            onClicked: {
                value++;
            }
        }

        RoundButton {
            id: roundButton1
            text: "-"
            font.pointSize: 16
            font.bold: false
            onClicked: {
                value--;
            }
        }

        Label {
            id: label
            text: "Value : "+ value
            font.bold: true
            font.pointSize: 19
        }
    }
}
