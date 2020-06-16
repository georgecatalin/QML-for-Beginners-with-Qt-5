import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle
    {
        width: 300
        height: 400
        color:"red"
        anchors.centerIn: parent

        Rectangle
        {
            width: 100
            height: 100
            color:"yellow"

            /* *** There is not set anchors by default *** */

            anchors.margins: 50
            anchors.left:parent.left
            anchors.bottom: parent.bottom

            anchors.leftMargin: 15

            /* *** Big takeaway from here" if there is no anchors set, then there will be no margins set,
            even if they appear in code *** */
        }
    }
}
