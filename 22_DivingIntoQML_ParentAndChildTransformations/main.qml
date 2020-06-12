import QtQuick 2.12
import QtQuick.Window 2.12

/* *** child and parent relationship *** */

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
        x:100
        y:100

        Rectangle {
            color: "red"
            x:-25
            y:-25
            width: 50
            height: 50
            opacity: 0.5
        }

        Rectangle {
            color: "blue"
            x: parent.width -width // width of this object which is 50
            y:parent.height-height // height of this object which is 50
            width: 50
            height: 50
            opacity: 0.5
        }
    }
}
