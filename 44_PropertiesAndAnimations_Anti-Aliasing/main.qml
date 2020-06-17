import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id:root

    Row
    {
        anchors.centerIn: parent
        spacing: 20

        Rectangle
        {
            id:myRectangle1
            width:300
            height: 300
            radius: width
            border.color: "red"
            border.width: 25

            Text {
                id: myText1
                text: qsTr("Antialising is on (default)")
                anchors.centerIn: parent
            }

        }

        Rectangle
        {
            id: myRectangle2
            width: 300
            height: 300
            radius: width
            border.color: "red"
            border.width: 25
            antialiasing: false //antialiasing is set to true by default, use it to false only when needed : emebedded devices, performance issues

            Text {
                id: myText2
                text: qsTr("Antialising is off")
                anchors.centerIn: parent
            }
        }
    }
}
