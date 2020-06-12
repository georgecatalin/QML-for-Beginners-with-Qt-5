import QtQuick 2.12
import QtQuick.Window 2.12

/* *** Non visual Item Class here *** */

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item {
        id: myItem
        anchors.centerIn: parent
        width: 150
        height: 100

        Rectangle {
            color: "green"
            anchors.fill: parent
        }

    }
}
