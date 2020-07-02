import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 2")

    Label {
        color: "#fc6250"
        text: qsTr("You are on Page 2.")
        font.pointSize: 13
        anchors.centerIn: parent
    }
}
