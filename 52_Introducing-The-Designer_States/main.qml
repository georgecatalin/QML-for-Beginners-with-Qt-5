import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MyBox {
        id: myBox
        anchors.fill: parent

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                if(parent.state==="on")
                {
                    parent.state="off";
                }
                else
                {
                    parent.state="on";
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:2;anchors_height:100;anchors_width:100}D{i:1;anchors_height:200;anchors_width:200;anchors_x:63;anchors_y:-25}
}
##^##*/
