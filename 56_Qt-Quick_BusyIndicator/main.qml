import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    BusyIndicator {
        id: busyIndicator
        x: 290
        y: 210
        width: 174
        height: 115
    }

    Label {
        id: label
        x: 302
        y: 187
        text: qsTr("Progress = ")+busyIndicator.running

        MouseArea {
            id: mouseArea
            width: 100
            height: 100
            anchors.fill: parent
            onClicked: {
                if(busyIndicator.running==true)
                {
                    console.log("Switching off");
                    busyIndicator.running=false;
                }
                else
                {
                    console.log("Switching on.");
                    busyIndicator.running=true;
                }
            }

        }
    }
}
