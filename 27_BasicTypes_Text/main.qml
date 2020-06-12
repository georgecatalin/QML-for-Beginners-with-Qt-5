import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Text {
        id: myText
        text: qsTr("<html><b>Hello</b><i><font color='green'>World</font><br/><font color='#C0C0C0'>this is a test</font><br/><a href='http://www.google.com'>this is a link</a>")
        font.bold: true; // this gets applied in correlation with what is already existing in the html of the text
        font.italic: true  // this gets applied in correlation with what is already existing in the html of the text
        color: "red"
        linkColor: "blue"
        anchors.centerIn: parent
        font.pixelSize: 25

        onLinkHovered: {
            console.log("Hovered: "+link);

            if(link)
            {
                myText.font.bold=true;
            }
            else
            {
                myText.font.bold=false;
            }
        }

        onLinkActivated: {
            Qt.openUrlExternally(link)
        }
    }
}
