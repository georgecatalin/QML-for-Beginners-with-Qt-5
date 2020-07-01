import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("RangeSlider")

    Column {
        id: column
        width: 200
        height: 400
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: label
            text: qsTr("Value")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
        }

        RangeSlider {
            id: rangeSlider
            anchors.horizontalCenter: parent.horizontalCenter
            first.value: 0.25
            second.value:0.75
        }
    }

    Connections {
        target: rangeSlider.first
        onValueChanged: {
            label.text=Math.round(rangeSlider.first.value * 100) + " to "+ Math.round(rangeSlider.second.value * 100);
        }
    }

    Connections {
        target: rangeSlider.second
        onValueChanged:{
            label.text=Math.round(rangeSlider.first.value * 100) + " to " + Math.round(rangeSlider.second.value * 100);
        }
    }
}
