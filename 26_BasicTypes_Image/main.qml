import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

   /* *** The image component uses OpenGL for handling which means it is very fast
     * OpenGL loads the image stored locally upon the start of the application, for a very little time the app freezes since it goes on a single thread
     * On the other hand, OpenGL loads the remote images after starting the application, hence a console.log() information can be implemented
    * *** */

/* *** How to  define a property in QML is similar to Javascript
    * property type name: value
    *** */

    property var middle: height/2

    /* *** case when image load from local file in resources *** */
    Image {
        id: myLocalImage
        source: "qrc:/files/images/smile.png"

        width: 200
        fillMode: Image.PreserveAspectFit

        x:300
        y:middle-100
    }

     /* *** case when image load from remote address *** */

    Image {
        id: myRemoteImage
        source: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"

        x:100
        y:middle

        width: 100;
        fillMode: Image.PreserveAspectFit

        onProgressChanged: console.log(myRemoteImage.progress)

        onStatusChanged: if (myRemoteImage.status==Image.Ready) console.log("Loaded")
    }
}
