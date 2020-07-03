#include <QGuiApplication>
#include <QQmlApplicationEngine>

//entry point of the application
int main(int argc, char *argv[])
{
    //set the application attributes
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    //The application class
    QGuiApplication app(argc, argv);

    //The QML Engine
    QQmlApplicationEngine engine;

    //The url of the QML file, notice it is a compiled resource
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    //Connecting signal and slot; make sure that object and url match
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    //the application loads the qml file
    engine.load(url);

    //the application entering an event loop that keeps the application open
    return app.exec();
}
