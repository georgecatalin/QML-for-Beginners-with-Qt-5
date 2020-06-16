import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id:myRectangle;
        color:"orange"
        width: 100
        height: 100

        function update()
        {
            console.log(x + " x " +y);
            myText.text=Math.round(x)+" x "+Math.round(y);
        }

        //anchors.centerIn: parent
        x:100
        y:100

        /* *** Reminder!! When anchor is present it is prevalent ahead of all other conditions *** */


        /* *** completed()
        *** Emitted after the object has been instantiated. This can be used to execute script code at startup, once the full
            QML environment has been established.

            The corresponding handler is onCompleted. It can be declared on any object. The order of running the onCompleted
            handlers is undefined.

            Rectangle {
                    Component.onCompleted: console.log("Completed Running!")
            Rectangle {
                    Component.onCompleted: console.log("Nested Completed Running!")
                        }
                    }
         *** */

        Component.onCompleted: update()
        onXChanged: update()
        onYChanged: update()


        Text {
            id: myText
            text: qsTr("text")
            anchors.centerIn: parent
        }

        MouseArea {
            id:myMouseArea
            anchors.fill: parent
            drag.target: parent; //whose obbject to apply the drag
        }
    }
}
