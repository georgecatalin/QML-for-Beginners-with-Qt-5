import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    
    Rectangle {
        id: rectangle
        x: 95
        y: 140
        width: 100
        height: 100
        color: "#2f6eee"
        border.color: "#e92323"

        MouseArea {
            id: mouseArea
            width: 100
            height: 100

            Connections {
                target: mouseArea
                onClicked:
                {
                 print("clicked");
                 rectangle.width=50;
                 rectangle.height=150;
                }

            }
        }

    }
    
    Rectangle {
        id: rectangle1
        x: 216
        y: 140
        width: rectangle.width
        height: rectangle.height
        color: "#e4ea3c"
        border.color: "#e92323"
    }
    
    Rectangle {
        id: rectangle2
        x: 341
        y: 140
        width: 100
        height: 100
        color: "#c22020"
        border.color: "#e92323"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
