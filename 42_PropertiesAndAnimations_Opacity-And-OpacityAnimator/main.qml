import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("A Duster in the mountains")
    id:root
    color:"black"

    Image {
        id: myImage
        source: "qrc:/images/Duster_in_the_mountains_4.jpeg"
        anchors.fill: parent
        opacity: 0
        fillMode: Image.PreserveAspectFit

        SequentialAnimation
        {
            loops:Animation.Infinite
            running: true

            OpacityAnimator{
                id: showMe
                target: myImage
                from: 0
                to:1
                duration: 2000
            }

            OpacityAnimator{
                id:hideMe
                target: myImage
                from:1
                to:0
                duration: 5000
            }
        }

    }
}
