import QtQuick 2.12
import QtQuick.Window 2.12

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
        x:50  // (0,0) is the top left corner of the screen
        y:50
    }

    Rectangle {
        id:rectangle1
        color: "red"
        width:200
        height: 200
        x:150
        y:150
        opacity: 0.5
        z:1
    }

    Rectangle {
        id:rectangle2
        color: "blue"
        width:200
        height: 200
        x:100
        y:100
        opacity: 0.5
        z:2
    }
}
