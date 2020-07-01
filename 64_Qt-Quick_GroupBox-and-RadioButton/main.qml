import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    title: qsTr("GroupBox and RadioButton")
    width: 640
    height: 480

    property string propFood: ""
    property string propDrinks: ""

    Popup {
        id:popup
        width: 200
        height: 150
        modal: true
        focus: true
        closePolicy: 	Popup.CloseOnEscape | Popup.CloseOnPressOutside
        anchors.centerIn: parent

        Column {
            id: columnPopup
            spacing: 25

            Label {
                id: lblPopup
                text: propFood + " with "+ propDrinks
            }

            Button {
                id: closeButton
                text:"Close"
                onClicked: popup.close()
            }
        }
    }

    Row {
        id: row
        width: 494
        height: 220
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        GroupBox {
            id: grpFood
            width: 200
            height: 200
            title: qsTr("Food")

            Column {
                id: colFood
                anchors.fill: parent
                spacing: 5

                RadioButton {
                    id: rdoFish
                    text: qsTr("Fish")
                }

                RadioButton {
                    id: rdoSteak
                    text: qsTr("Steak")
                }

                RadioButton {
                    id: rdoVegan
                    text: qsTr("Vegan")
                }
            }
        }

        GroupBox {
            id: grpDrinks
            width: 200
            height: 200
            title: qsTr("Drinks")
            Column {
                id: colDrinks
                anchors.fill: parent
                spacing: 5
                RadioButton {
                    id: rdoCoke
                    text: qsTr("Coca Cola")
                }

                RadioButton {
                    id: rdoWine
                    text: qsTr("Wine")
                }

                RadioButton {
                    id: rdoWater
                    text: qsTr("Water")
                }
            }
        }
    }

    Button {
        id: button
        x: 219
        y: 356
        text: qsTr("Click me")
    }

    Connections {
        target: button
        onClicked: {
            //get the Food
            for(var i=0;i<colFood.children.length;i++)
            {
                var rdo=colFood.children[i];
                if(rdo.checked) propFood=rdo.text;
            }

            for(var i=0;i<colDrinks.children.length;i++)
            {
                var rdo=colDrinks.children[i];
                if(rdo.checked) propDrinks=rdo.text;
            }

            popup.open();
        }

    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:3;anchors_height:400;anchors_width:200}
D{i:2;anchors_height:200;anchors_width:200}D{i:8;anchors_height:400;anchors_width:200}
D{i:7;anchors_height:200;anchors_width:200}D{i:1;anchors_height:220;anchors_width:494}
}
##^##*/
