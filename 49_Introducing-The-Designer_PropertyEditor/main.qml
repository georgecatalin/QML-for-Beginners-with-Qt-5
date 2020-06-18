import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        x: 127
        y: 132
        width: 200
        height: 200
        color: "#b61212"
        radius: 15
        border.width: 6
        border.color: "#1a50dc"
    }

    Rectangle {
        id: rectangle1
        x: 414
        y: 213
        width: 200
        height: 200
        color: "#b61212"
        radius: 15
        border.width: 6
        border.color: "#1a50dc"
    }
}
