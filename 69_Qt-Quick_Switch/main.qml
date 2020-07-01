import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Switch")

    Column {
        id: column
        anchors.fill: parent

        Image {
            id: image
            width: 300
            height: 300
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source:"qrc:/images/happy.png"

        }

        Switch {
            id: element
            text: qsTr("happy")
            font.pointSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25
            checked: true
            onToggled: {
                if(checked){
                    text="happy";
                    image.source="qrc:/images/happy.png";
                } else {
                    text="sad";
                    image.source="qrc:/images/sad.png";
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:200}
}
##^##*/
