import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item
    {
      id:root
      rotation: 0
      anchors.centerIn: parent

       Rectangle
       {
           id:yellowRectangle
           color:"yellow"
           width: 300
           height: 300
           radius: width
           opacity: 0.5
           border.width: 2
           border.color: "black"
           anchors.centerIn: parent /* *** when anchors. are used , coordinates can be utilized anymore *** */
           transform: Translate {y:-100} //Translate offsets the values, without adjusting x,y coordinates which would not have any effect due to existing anchors
       }

       Rectangle
       {
           id:blueRectangle
           color:"blue"
           width: 300
           height: 300
           radius: width
           opacity: 0.5
           border.width: 2
           border.color: "black"
           anchors.centerIn: parent
           transform: Translate {y:100;x:-100 } //Translate offsets the values, without adjusting x,y coordinates which would not have any effect due to existing anchors
       }

       Rectangle
       {
           id:redRectangle
           color:"red"
           width: 300
           height: 300
           radius: width
           opacity: 0.5
           border.width: 2
           border.color: "black"
           anchors.centerIn: parent
           transform: Translate{y:100;x:100}
       }

       Rectangle
       {
           id:centerRectangle
           color:"white"
           width: 50
           height: 50
           radius: width
           opacity: 1
           border.width: 2
           border.color: "black"
           anchors.centerIn: parent

           Rectangle
           {
               id:centerCircle
               color:"black"
               width: 5
               height: 5
               radius: width
               opacity:1
               border.width: 2
               border.color: "black"
               anchors.centerIn: parent
           }
       }

       RotationAnimator
       {
           target: root
           from: 360
           to:0
           loops:Animation.Infinite
           direction: RotationAnimator.Counterclockwise
           duration: 1000
           running: true
       }
    }
}
