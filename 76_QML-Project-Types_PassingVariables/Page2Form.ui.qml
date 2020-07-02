import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    property alias name: lblReadName.text
    width: 600
    height: 400

    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 2.")
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        id: lblReadName
        color: "#f75555"
        text: qsTr("Label")
        font.pointSize: 17
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
