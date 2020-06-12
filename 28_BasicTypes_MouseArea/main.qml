import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id:myRectangle;
        color:"blue";
        width: 200
        height: 200;
        anchors.centerIn: parent

        MouseArea{
            id:myMouseArea
            anchors.fill: parent // gotcha no.1 only a single pixel (0,0) is considered if not done
            acceptedButtons: Qt.LeftButton | Qt.RightButton  // gotcha no.2 : does not sense right button if not done
            hoverEnabled: true; // gotcha no. 3  does not sense position changed if not done

            onClicked: {
                console.log("Clicked "+ mouse.button);


                /* ***
                    The ‘==’ operator tests for abstract equality i.e. it does the necessary type conversions before doing the equality comparison.
                    But the ‘===’ operator tests for strict equality i.e it will not do the type conversion hence if the two values are not of the same type,
                    when compared, it will return false.

                        Example 1:

                    <script>
                        // In R.H.S. string "3" is converted into
                        // number 3, hence returns true.
                        document.write(9 == "9");

                        // used for next line
                        document.write('<br>')

                        // Here no type conversion takes place,
                        // hence returns false
                        document.write(9 === "9");
                    </script>

                   * *** */

                if(mouse.button===Qt.LeftButton) parent.color="red";
                if(mouse.button===Qt.RightButton) parent.color="gray";
            }

            onDoubleClicked: {
                console.log("Double clicked "+ mouse.button);
            }

            onPositionChanged: {
                console.log("Position X:"+ mouseX+" Position Y: "+mouseY);
            }

            onEntered: parent.color="orange"

            onExited: parent.color="blue"
        }
    }
}
