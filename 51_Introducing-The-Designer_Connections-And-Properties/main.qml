import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 29
        y: 86
        width: 200
        height: 200
        color: "#ee4c4c"
        
        MouseArea {
            id: mouseArea
            anchors.fill: parent

            Connections {
                target: mouseArea
                onClicked: {
                    print("clicked");
                    //element.text="alligator!";
                    rectangle1.title="Ola!";
                }

            }
        }
    }
    
    Rectangle {
        id: rectangle1
        x: 329
        y: 86
        width: 200
        height: 200
        color: "#ee4c4c"
        property string title: "Hello"
        
        Text {
            id: element
            color: "#e3d8d8"
            text: parent.title
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.bold: true
            font.pixelSize: 33
        }
    }
}
