import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MyShape
    {
        id:centralShape
        anchors.centerIn: parent

        text:"Central"

        Rectangle
        {
            width: 25
            height: 25
            color:"pink"
            //anchors.fill: parent

            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }

    MyShape
    {
        id:topShape
        text:"Top"
        color:"green"

        anchors.bottom:centralShape.top
        anchors.left:centralShape.left
    }

    MyShape
    {
        id:bottomShape
        text:"Bottom"
        color:"blue"

        anchors.top:centralShape.bottom
        anchors.left:centralShape.left
    }

    MyShape
    {
        id:leftShape
        text:"Bottom"
        color:"red"

        anchors.right:centralShape.left
        anchors.bottom:centralShape.bottom
    }

    MyShape
    {
        id:rightShape
        text:"Bottom"
        color:"brown"

        anchors.left:centralShape.right
        anchors.bottom:centralShape.bottom
    }
}
