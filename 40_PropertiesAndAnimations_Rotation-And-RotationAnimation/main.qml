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
        width: 200
        height: 200
        anchors.centerIn: parent

        Text {
            id: name
            text: Math.round(parent.rotation)
            color:"darkred"
            font.bold:true
            font.pointSize: 65
            anchors.centerIn: parent
        }

        RotationAnimation
        {
            id:myAnimation
            target: myShape //mind the target to be the same as in from:
            duration: 2000
            loops:Animation.Infinite
            from:myShape.rotation
            to:360
            direction: RotationAnimation.Clockwise // or RotationAnimation.CounterClockwise
            running: true

        }

        MouseArea
        {
            id:myMouseArea
            anchors.fill:parent
            onClicked:
            {
                if(myAnimation.paused)
                {
                    myAnimation.resume();
                }
                else
                {
                    myAnimation.pause();
                }
            }
        }
    }
}
