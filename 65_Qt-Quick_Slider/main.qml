import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Slider")

    Grid {
        id: grid
        width: 400
        height: 68
        spacing: 11
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        columns: 2

        Slider {
            id: slider
            value: 0
        }

        Label {
            id: label
            text: slider.value * 100
            font.bold: true
            font.pointSize: 17
        }
    }
}
