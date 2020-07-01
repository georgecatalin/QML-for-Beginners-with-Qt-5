import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row {
        id: row
        width: 364
        height: 136
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 44

        DelayButton {
            id: delayButton
            text: qsTr("Delay Button")
            delay: 3000
            onActivated: {
                label.text="DONE";
                text="BOOM";
            }
            onProgressChanged: {
                label.text=Math.round(progress*1000);
                if(progress===0)
                {
                    label.text="Status";
                    text="Delete everything";
                }
            }
        }

        Label {
            id: label
            text: qsTr("Status")
            font.pointSize: 20
            font.bold: true
        }
    }
}
