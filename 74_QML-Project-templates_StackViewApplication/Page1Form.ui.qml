import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 1")

    Label {
        color: "#0a63bd"
        text: qsTr("You are on Page 1.")
        font.bold: true
        font.pointSize: 15
        anchors.centerIn: parent
    }
}
