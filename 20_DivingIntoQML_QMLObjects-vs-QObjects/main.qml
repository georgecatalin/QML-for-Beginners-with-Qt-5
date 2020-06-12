import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: myImage
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        width: 150
        height: 100
        anchors.centerIn: parent
        opacity: 0.25
    }

    TextInput {
        id:myInput
        text: "Hello Qt"
        anchors.centerIn: parent
        font.pixelSize: 25
    }

    Text {
        id: myText
        text: myInput.text // property Binding here :  a property of another object
        font.pixelSize: 25
    }
}
