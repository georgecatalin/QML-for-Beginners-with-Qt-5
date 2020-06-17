import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id:root

    Rectangle{
        id:myShape
        color:"red"
        width: 100
        height: 100
        x:0
        y:(parent.height/2)-(height/2)

        PropertyAnimation
        {
            id:animationToRight
            duration: 1000 // this is in milliseconds 1000 ms= 1 second
            target: myShape
            property: "x"
            to: root.width-myShape.width
        }

        PropertyAnimation
        {
            id:animationToLeft
            duration:2000 // this is in milliseconds 1000 ms= 1 second
            target: myShape
            property: "x"
            to: 0
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked: {
                if(myShape.x===0)
                {
                    animationToRight.start();
                }
                else
                {
                    animationToLeft.start();
                }
            }
        }
    }
}
