import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Passing a variable")
    id: root

    property string name: ""

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        //Edit write the var
        Page1Form {
            id: page1
            Component.onCompleted:  { //after loading the component , load the property from main.qml
                name=root.name;
            }
        }

        //Display read the var
        Page2Form {
            id:page2

        }

        onCurrentIndexChanged: {
            console.log(currentIndex);
            if(currentIndex==1) //page is 2 that displays the property
            {
                root.name=page1.name;
                console.log(root.name);
                page2.name=root.name;
            }

            if(currentIndex==0) //back on page 1 through swiping
            {
                root.name=page2.name;
                page1.name=root.name;
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }
}
