import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    visible: true
    width: 640
    height: 480
    color: "#f7ffff"
    title: qsTr("Hello World")

    Row {
        id: row
        x: 0
        y: 0
        width: 640
        height: 60

        Button {
            id: button
            text: qsTr("bird")

            Connections {
                target: button
                onClicked:{
                    print("clicked");
                    image.source="qrc:/images/images/bird.jpg";
                }
            }
        }

        Button {
            id: button1
            text: qsTr("cat")

            Connections {
                target: button1
                onClicked:{
                    print("clicked");
                    image.source="qrc:/images/images/cat.jpg"
                }

            }
        }

        Button {
            id: button2
            text: qsTr("dog")

            Connections {
                target: button2
                onClicked:{
                    print("clicked");
                    image.source="qrc:/images/images/dog.jpg";
                }
            }
        }

        Button {
            id: button3
            text: qsTr("fish")

            Connections {
                target: button3
                onClicked:{
                    print("clicked");
                    image.source="qrc:/images/images/fish.jpg";
                }
            }
        }
    }

    Image {
        id: image
        x: 0
        y: 66
        width: 640
        height: 414
        fillMode: Image.PreserveAspectFit
        source: "qrc:/qtquickplugin/images/template_image.png"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
