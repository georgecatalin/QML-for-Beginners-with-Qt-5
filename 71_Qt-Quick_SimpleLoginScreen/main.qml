import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Simple Login Screen")

    property string username: "george"
    property string password: "fuckoff"
    property string status: "locked"

    Popup {
        id:statusPopup
        width: 200
        height: 150
        anchors.centerIn: parent
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Label {
            id: labelPopup
            text:status
            font.bold:true
            anchors.centerIn: parent
        }
    }

    Column {
        id: column
        width: 499
        height: 400

        Grid {
            id: grid
            width: 300
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 8
            columns: 2

            Label {
                id: label
                text: qsTr("username")
            }

            TextField {
                id: txtUsername
                placeholderText: qsTr("")
            }

            Label {
                id: label1
                text: qsTr("password")
            }

            TextField {
                id: txtPassword
                placeholderText: qsTr("")
                echoMode: TextInput.Password
            }

        }

    }

    Button {
        id: button
        x: 137
        y: 278
        text: qsTr("Check")
        onClicked: {
            if(txtUsername.text===username && txtPassword.text===password ) status="Unlocked";
            statusPopup.open();
        }
    }
}

/*##^##
Designer {
    D{i:2;anchors_height:400;anchors_width:400}
}
##^##*/
