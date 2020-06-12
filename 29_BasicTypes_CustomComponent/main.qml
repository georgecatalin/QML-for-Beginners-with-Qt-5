import QtQuick 2.12
import QtQuick.Window 2.12

/* *** This shows how to create custom components *** */

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property var middle: (height/2)-50

    MyButton {
        id:myButton1
        x:100
        y:middle
        color:"red"
        colorClicked: "orange"
        title: "Button 1"
    }

    MyButton {
        id:myButton2
        x: (parent.width/2)-(width/2) // 'width' is the width of this myButton2
        y:middle
        color:"blue"
        colorClicked: "orange"
        title:"Button 2"
    }

    MyButton {
        id:myButton3
        x: parent.width-200 // 'width' is the width of this myButton2
        y:middle
        color:"green"
        colorClicked: "orange"
        title:"Button 3<br/>Testing"
    }
}
