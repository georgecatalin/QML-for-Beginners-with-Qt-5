import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        x: 279
        y: 205
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Dial {
        id: dial
        x: 50
        y: 263
    }

    CheckBox {
        id: checkBox
        x: 495
        y: 25
        text: qsTr("Check Box")
    }

    DelayButton {
        id: delayButton
        x: 506
        y: 97
        text: qsTr("Delay Button")
    }
}
