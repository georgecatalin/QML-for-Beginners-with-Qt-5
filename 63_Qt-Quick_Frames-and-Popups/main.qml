import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
   title: qsTr("Frames and Popups")

    Popup {
        id:popup
        width:200
        height:400
        anchors.centerIn: parent
        modal:true
        focus:true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Column {
            id: columnPopup
            spacing: 20
            anchors.fill: parent

            Label {
                id: labelButter
                text: "Butter = " + chkButter.checked
            }

            Label {
                id: labelSyrup
                text: "Syrup = " + chkSyrup.checked
            }

            Label {
                id: labelFruit
                text: "Fruit = "+ chkFruit.checked
            }

            Button {
                id: buttonPopup
                text: qsTr("Close")
                onClicked: {
                    popup.close();
                    //columnPopup.visible=false;
                }
            }

        }

    }

    Frame {
        id: frame
        width: 200
        height: 256
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Column {
            id: column
            spacing: 20
            anchors.fill: parent

            CheckBox {
                id: chkButter
                text: qsTr("Butter")
            }

            CheckBox {
                id: chkSyrup
                text: qsTr("Syrup")
            }

            CheckBox {
                id: chkFruit
                text: qsTr("Fruit")
            }

            Button {
                id: button
                text: qsTr("Save")
                onClicked: {
                    popup.open();
                    //popup.visible=true;
                }
            }
        }


    }
}
