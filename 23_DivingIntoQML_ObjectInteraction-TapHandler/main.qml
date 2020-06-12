import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        anchors.centerIn: parent
        width:150
        height: 150

        color: myTapHandler.pressed ? "red" : "black";

        TapHandler {
            id:myTapHandler
        }
    }
}
