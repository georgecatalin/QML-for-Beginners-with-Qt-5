#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include <test.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);




    //Register a type in QML
    qmlRegisterType<Test>("com.company.test",1,0,"Test");

    //"com.company.test" whatever namespace
    //1,0 //major minor version
    //"Test" whatever name you will use to appeal this class type in QML

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
