import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        color: "#14ef0c"
        text: qsTr("You are on Page 2.")
        font.pointSize: 16
        anchors.centerIn: parent
    }
}
