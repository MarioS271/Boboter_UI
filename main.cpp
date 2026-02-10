#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QPalette>

#include "constants.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.rootContext()->setContextProperty("appVersion", versionString);
    engine.loadFromModule("Boboter_UI", "Main");

    QPalette palette = app.palette();
    palette.setColor(QPalette::Text, Colors::textColor);
    palette.setColor(QPalette::Accent, Colors::accentColor);
    palette.setColor(QPalette::ButtonText, Colors::accentColor);
    app.setPalette(palette);

    return app.exec();
}
