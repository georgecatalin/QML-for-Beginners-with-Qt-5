import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("ScrollView Application")

    /* *** Creae a component which encapsulates the representation of data *** */

    Component {
        id:myComponent

        Item {
            id: myItem
            width: 200
            height: 50

            Column {
                anchors.fill: parent
                spacing: 5

                Label {
                    id:lblName
                    text:name
                    font.bold: true
                }

                Label {
                    id:lblAge
                    text: age
                }
            }
        }
    }



    /* *** Create a model which holds the data *** */
    ListModel {
        id: myModel
        ListElement {
            name:"George"
            age: "41"
        }
        ListElement {
            name: "Mara"
            age:"8"
        }
        ListElement {
            name: "Sorina"
            age: "42"
        }
        ListElement {
            name: "Sandu"
            age: "65"
        }
        ListElement {
            name:"Vali"
            age:64
        }

    }


    ScrollView {
        anchors.fill: parent

        ListView {
            width: parent.width
            model: myModel
            delegate: myComponent
            }
        }
    }

