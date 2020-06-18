import QtQuick 2.0

Item {
    id: element
    property color offColor: "red"
    property color nColor: "blue"
    property color defaultColor: "gray"

    Rectangle {
        id: rectangle
        x: 148
        y: 116
        width: 200
        height: 200
        color: defaultColor
        radius: width
    }
    states: [
        State {
            name: "off"

            PropertyChanges {
                target: rectangle
                color: offColor
            }
        },
        State {
            name: "on"

            PropertyChanges {
                target: rectangle
                color: nColor
            }
        }
    ]

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
