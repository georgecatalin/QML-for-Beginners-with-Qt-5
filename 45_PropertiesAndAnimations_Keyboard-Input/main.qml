import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Keyboard Input")
    id:root

    Rectangle{
        id:background
        color:"black"
        anchors.fill: parent
        focus: true /* *** because we are going to use the keyboard *** */

        Rectangle
        {
            id:myRectangle1
            color:"red"
            anchors.centerIn: parent
            width: 100
            height: 100
        }

        Rectangle
        {
            id:outline
            color:"transparent"
            anchors.centerIn: parent
            width: 100
            height: 100
            border.color:"yellow"
            border.width: 5
        }

        Keys.onUpPressed: myRectangle1.height +=10
        Keys.onDownPressed: myRectangle1.height -=10
        Keys.onLeftPressed: myRectangle1.width-=10
        Keys.onRightPressed: myRectangle1.width+=10
    }
}
