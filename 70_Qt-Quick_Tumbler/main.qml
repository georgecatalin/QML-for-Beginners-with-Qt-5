import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Tumbler")

    property string lockedCode: "112"
    property string status: "Locked"

    Popup {
        id:popup
        width: 200
        height: 150
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        modal: true
        focus: true
        anchors.centerIn: parent

        Label {
            id: labelPopup
            text: status
            font.pointSize: 25
            anchors.centerIn: parent
        }
    }

    Column {
        id: column
        width: 326
        height: 400
        spacing: 16
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: label
            text: qsTr("000")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 20
        }

        Row {
            id: row
            width: 190
            height: 200
            anchors.horizontalCenter: parent.horizontalCenter

            Tumbler {
                id: tumbler
                font.pointSize: 11
                model: 10
                onCurrentIndexChanged: {
                    label.text=tumbler.currentIndex+" "+tumbler1.currentIndex+" "+tumbler2.currentIndex;
                }
            }

            Tumbler {
                id: tumbler1
                font.pointSize: 11
                model: 10
                onCurrentIndexChanged: {
                     label.text=tumbler.currentIndex+" "+tumbler1.currentIndex+" "+tumbler2.currentIndex;
                   }

            }

            Tumbler {
                id: tumbler2
                font.pointSize: 11
                model: 10
                onCurrentIndexChanged: {
                 label.text=tumbler.currentIndex+" "+tumbler1.currentIndex+" "+tumbler2.currentIndex;
                }
            }
        }

        Button {
            id: button
            text: qsTr("Check")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                var tempCode=tumbler.currentIndex+""+tumbler1.currentIndex+""+tumbler2.currentIndex;
                if(tempCode==lockedCode) status="Unlocked";
                popup.open();
            }
        }
    }
}
