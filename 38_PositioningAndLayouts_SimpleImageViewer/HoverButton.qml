import QtQuick 2.0

Item {
    id:root
    property color color: "red"
    property color hoverColor: "yellow"
    property color clickColor: "orange"

    property color textColor: "white"
    property color hoverText: "black"

    property alias title: display
    property alias area: mouseArea

    Rectangle
    {
        height: root.height
        width: root.width
        color:root.color
        clip:true

        Text {
            id: display
            text: ""
            anchors.centerIn: parent
            color:root.textColor
            font.bold:true;
            font.pixelSize: 12
        }

        MouseArea {
            id:mouseArea
            hoverEnabled: true
            anchors.fill: parent

            onEntered:
            {
                parent.color=root.hoverColor
                display.color=root.hoverText
            }

            onExited:
            {
                parent.color=root.color
                display.color=root.textColor
            }

            onPressed: parent.color=root.clickColor
            onReleased:parent.color=root.hoverColor
        }
    }

}
