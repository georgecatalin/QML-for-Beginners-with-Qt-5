import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("CheckDelegate in a ListView")

    Column {
        id:column
        width: 200
        height: 400
        anchors.centerIn: parent

        Label {
            id:label
            text: qsTr("Selected here")
            font.pointSize: 12
            font.bold: true
        }

        ListView {
            width: 200
            height: 200
            model: ["My option 1", "My option 2", "My option 3"] //the data in the model
            delegate: CheckDelegate
            {
                text: modelData
                onCheckStateChanged: {
                    label.text=index+" - "+ modelData + " = "+ checked
                }
            }
        }
    }
}
