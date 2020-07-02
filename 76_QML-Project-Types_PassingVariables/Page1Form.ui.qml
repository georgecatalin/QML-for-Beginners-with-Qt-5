import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    property alias name: textField.text
    width: 600
    height: 400

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 1.")
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        id: column
        y: 42
        width: 200
        height: 209
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: lblEnterName
            text: qsTr("What is your name?")
        }

        TextField {
            id: textField
            placeholderText: qsTr("Text Field")
        }
    }
}
