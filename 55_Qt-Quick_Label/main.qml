import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Label {
        id: label
        x: 33
        y: 60
        text: qsTr("This is my 1st label.")
    }

    Label {
        id: label1
        x: 33
        y: 98
        width: 121
        height: 73
        color: "#c22020"
        text: qsTr("This is the loooongest label ever....")
        wrapMode: Text.WordWrap
    }

    Label {
        id: label2
        x: 28
        y: 177
        text: qsTr("<font color='green'><b>H<i>T</i>ML</b></font>")
        font.pointSize: 25
    }
}
