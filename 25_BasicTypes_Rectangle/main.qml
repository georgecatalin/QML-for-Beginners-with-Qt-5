import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id:myRectangle
        visible: true
        color:"red"
        width: 200
        height: 200
        anchors.centerIn: parent

        border.color: "#000000"
        border.width: 5

        radius: width /* *** in case you need a circle , set the radius=max(width, height) of the rectangle *** */

        gradient: Gradient {
            GradientStop {position:0.0;color:"red"}  // note: delimiter is ;  just like in CSS
            GradientStop{position:1.0;color:"blue"}
        }
    }
}
