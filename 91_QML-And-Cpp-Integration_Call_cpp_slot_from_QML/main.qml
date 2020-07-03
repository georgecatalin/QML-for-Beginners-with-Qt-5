import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

//test class is here


Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 200
        height: 400
        spacing: 15
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        Label {
            id: label
            text: qsTr("Call a C++ slot")
            font.pointSize: 15
        }
        Button {
            id: button
            text: qsTr("Click me")
            onClicked: {
                //Call a slot
                testing.bark();

                //can not call a non-slot - must be a property
                 /* var num=testing.number();
                print(num); */
            }
        }
    }
}
