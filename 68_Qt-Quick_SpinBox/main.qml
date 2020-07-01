import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row {
        id: row
        width: 200
        height: 400
        spacing: 11
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        SpinBox {
            id: spinBox
        }

        Label {
            id: label
            text: spinBox.value
            font.pointSize: 19
        }
    }

}
