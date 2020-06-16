import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property var midX: width/2
    property var midY: height/2

    MyShape{
        id:my1stShape
        color:"red"
        x: midX- (width/2)
        y: midY-(height/2)-30
    }

    MyShape
    {
        id:my2ndShape
        color: "green"
        x: midX-(width/2)-55
        y:midY-(height/2)+30
    }

    MyShape
    {
        id:my3rdShape
        color:"blue";
        x: midX-(width/2)+55
        y:midY-(height/2)+30
    }
}
