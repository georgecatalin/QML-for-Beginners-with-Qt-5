import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("ComboBox")

    Column {
        id: column
        width: 200
        height: 198
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: lblFood
            color: "#f75555"
            text: qsTr("Selected Item")
            font.pointSize: 12
        }

        ComboBox {
            id: cboFood
            model:["Pizza","Steak","Pasta"]
            onCurrentTextChanged: lblFood.text=cboFood.currentText
        }

        Label {
            id: lblPerson
            text: qsTr("Selected Person")
            color: "#f75555"
            font.pointSize: 12
        }

        ComboBox {
            id: cboPerson
            editable: true;

            textRole:"name"; // the property of the ListElement to be shown in ComboBox

            model: ListModel {
                id:listmodel
                ListElement {name:"George";age:"41"}
                ListElement{name:"Mara";age:"8"}
                ListElement{name:"Sorina"; age:"42"}
            }
             onCurrentIndexChanged: lblPerson.text=model.get(currentIndex).name + " = "+ model.get(currentIndex).age

             onAccepted: {
                 if(find(editText)===-1)
                 {
                     model.append({"name": editText,"age":"0"});
                     currentIndex=find(editText);
                 }
             }
        }


    }
}
