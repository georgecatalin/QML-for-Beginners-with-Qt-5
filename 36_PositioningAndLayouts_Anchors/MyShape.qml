import QtQuick 2.0

Item {
    id:root
    width: 100
    height: 100

    property color color: "gray"
    property string text: "title"

    Rectangle
    {
        color:root.color
        anchors.fill: parent


        Text {
            text: root.text
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill:parent;
            drag.target: root.parent
            onClicked: root.z++
        }
    }
}
