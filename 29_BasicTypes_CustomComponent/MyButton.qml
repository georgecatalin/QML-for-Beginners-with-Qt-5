import QtQuick 2.0

Item {
    id:root;
    width: 100
    height: 100

    /* *** Define new properties *** */
    property color color: "#C0C0C0"
    property color colorClicked: "green"
    property string title: "Click me"

    Rectangle{
        id:myRectangle
        color:root.color //or parent.color
        anchors.fill:parent

        Text {
            id: myText
            text: root.title
            anchors.centerIn: parent
        }

        MouseArea{
            id:myMouseArea
            anchors.fill: parent

            onPressed: parent.color=root.colorClicked
            onReleased: parent.color=root.color
        }
    }

}
