import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

//import out class/type

import com.company.test 1.0 //major minor version

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

   //Ctrl+Space to call intellisense
    Test {
        id:test
        onStatus: {
            lblStatus.text=data; //data from signature of status
        }
    }

    Column {
            id: column
            width: 101
            height: 88
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 10
            Label {
                id: label
                text: qsTr("Register a C++ Class")
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: false
                font.pointSize: 10
            }
            Label {
                id: lblStatus
                text: qsTr("Status")
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.pointSize: 25
            }

            Button {
                id: button
                text: qsTr("Click Me")
                onClicked: {
                    var num=Math.round(Math.random() *100);
                    test.work(num);
                }

            }
        }
}
