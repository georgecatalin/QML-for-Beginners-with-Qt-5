import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 1")

        Grid {
            id: myGrid
            columns: 2
            width: 300
            height: 100
            anchors.centerIn: parent
            spacing: 5

            Label {
               id: lblmy1stNameLabel
               text: "First Name"
            }

            TextField {
                id: txtmy1stName
                text: ""
            }

            Label {
                text: "Last Name"
            }

            TextField {
                id: txtmy2ndName
                text: ""
            }

        }
    }

