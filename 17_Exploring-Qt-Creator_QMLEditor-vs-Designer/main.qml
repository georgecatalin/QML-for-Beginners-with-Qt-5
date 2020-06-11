import QtQuick 2.12
import QtQuick.Window 2.12

/* *** Use CTRL+ Space to show Intellisense *** */

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        id: myElement
        text: qsTr("Hello, Qt QML")
        anchors.centerIn: parent;
        font.bold: true;
        font.italic: true;

    }

}
