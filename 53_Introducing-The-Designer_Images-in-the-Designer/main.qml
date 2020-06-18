import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id: name
        fillMode: Image.PreserveAspectFit
        anchors.fill: parent
        source: "qrc:/images/Duster_in_the_mountains_1.jpg"
    }
}
