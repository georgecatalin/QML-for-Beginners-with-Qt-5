import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 178
        y: 123
        width: 200
        height: 200
        color: "#f42121"
        border.color: "#2155de"
    }
}
