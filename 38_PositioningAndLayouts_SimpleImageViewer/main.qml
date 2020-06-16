import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id:root

    property color bgcolor: "#5A6263"
    property color buttonColor: "green"
    property color hoverColor: "limegreen"
    property color clickColor: "yellow"

    property var size: 100

    Rectangle{
        id:background
        color:root.buttonColor
        width: 100
        height: parent.height

        Column{
            id:myColumn
            anchors.fill:parent

            HoverButton
            {
                width: 100
                height: 50
                title.text: "A Duster"
                color:root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: myImage.source="qrc:/images/Images/Duster_in_the_mountains_3.jpeg"
            }

            HoverButton
            {
                width: 100
                height: 50
                color:root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                title.text: "Another Duster"
                area.onPressed: myImage.source="qrc:/images/Images/Duster_in_the_mountains_4.jpeg"
            }

            HoverButton
            {
                width: 100
                height: 50
                color:root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                title.text: "More Duster"
                area.onPressed: myImage.source="qrc:/images/Images/Duster_in_the_mountains_5.jpeg"
            }

            HoverButton
            {
                width: 100
                height: 50
                color:root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                title.text: "Finally"
                area.onPressed: myImage.source="qrc:/images/Images/Duster_in_the_mountains_6.jpeg"
            }
        }
    }

    Rectangle{
        id:myRectange
        color:root.bgcolor
        x:100
        y:0
        width: parent.width-x
        height: parent.height

        Image {
            id: myImage
            anchors.fill:parent
            anchors.margins: 25
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/Images/Duster_in_the_mountains_1.jpeg"

        }
    }

}


