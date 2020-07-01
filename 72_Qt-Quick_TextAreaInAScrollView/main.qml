import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("TextArea in a ScrollView")

    Column{
        id:column
        anchors.fill: parent
        spacing: 5

        ScrollView {
            id: scrollView
            width: parent.width
            height: parent.height-(textField.height+10)

            TextArea {
                id:textArea
                width: parent.width
            }
        }

        TextField {
           id:textField
           focus: true
           text: ""

           Keys.onReturnPressed: {
               textArea.append(textField.text)
               textField.clear();
               scrollView.contentItem.contentY=textArea.height - scrollView.contentItem.height
           }
        }
    }
}
