import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //This is a single line comment

    /*
      * This is a multi line comment
      * */

    Image {
        id: myImage
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        anchors.centerIn: parent
    }


}
