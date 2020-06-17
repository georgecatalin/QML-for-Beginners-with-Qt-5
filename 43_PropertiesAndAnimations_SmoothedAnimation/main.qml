import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle
    {
        anchors.fill:parent
        color:"black"
        focus:true

        Rectangle{
            width: 60
            height: 60
            color:"yellow"
            radius: width

            x:myRectangle1.x-5 //5=(60-50)/2
            y:myRectangle1.y-5

            /* *** Behaviour on property change *** */
            Behavior on x { SmoothedAnimation{ velocity: 100} }
            Behavior on y {SmoothedAnimation{velocity:100}}
        }

        Rectangle{
            id:myRectangle1
            color:"red"
            width: 50
            height: 50
            radius: width
            x: (parent.width/2) - (width/2)
            y: (parent.height/2) - (height/2)
        }

        Keys.onRightPressed: myRectangle1.x=myRectangle1.x+100
        Keys.onLeftPressed: myRectangle1.x=myRectangle1.x-100
        Keys.onUpPressed:myRectangle1.y=myRectangle1.y-100
        Keys.onDownPressed:myRectangle1.y=myRectangle1.y+100
    }
}
