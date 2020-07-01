import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 200
        height: 400
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 50


        Label {
            id: label
            text: qsTr("Value")
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 23
        }
        Dial {
            id: dial

            Connections {
                target: dial
                onMoved: label.text=Math.round(target.value*100)
            }
        }
    }
}
