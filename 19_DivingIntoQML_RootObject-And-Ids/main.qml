import QtQuick 2.12
import QtQuick.Window 2.12

/* *** Concepts in this video:
  *** id => must be unique
  *** rootObject => can be only one object
*** */

/* ***  Top level object is root object *** */
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: myImage
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        width: 150
        height: 100
        anchors.centerIn: parent

        Rectangle {
            color: "red"
            width: parent.width
            height: parent.height
            opacity: 0.5
        }
    }
}
