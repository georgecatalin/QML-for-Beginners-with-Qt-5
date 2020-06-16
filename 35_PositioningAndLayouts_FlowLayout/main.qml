import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle
    {
        color:"pink"
        width: 300
        height: 400
        anchors.centerIn: parent

        clip:true

        Flow
        {
            anchors.centerIn: parent
            flow:Flow.TopToBottom //LeftToRight //Flow.LeftToRight //Flow.TopToBottom

            MyShape{color:"red"}
            MyShape{color:"yellow"}
            MyShape{color:"green"}
            MyShape{color:"blue"}
            MyShape{color:"black"}
            MyShape{color:"gray"}
            MyShape{color:"teal"}
        }
    }
}
