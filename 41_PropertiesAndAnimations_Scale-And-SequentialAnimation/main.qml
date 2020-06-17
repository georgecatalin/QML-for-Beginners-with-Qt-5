import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle
    {
        id:myRectangle
        color: "red"
        width: 200
        height: 200
        anchors.centerIn: parent
        clip:true

        Text {
            id: myText
            text: qsTr("SCALED")
            color: "darkred"
            rotation: -45 // do not use rotation in animations, only in definitions of objects
            font.bold: true
            font.pointSize: 66
            anchors.centerIn: parent
        }

        SequentialAnimation
        {
           id:myanimator
           running: true
           loops:Animation.Infinite

           ScaleAnimator
           {
               id:myShrink
               target: myRectangle
               from: 1
               to: 0.5
               duration: 2000
               running: true
           }


           ScaleAnimator
           {
               id:myGrow
               target: myRectangle
               from: 0.5
               to: 1
               duration: 2000
               running: true
           }
        }
    }
}
