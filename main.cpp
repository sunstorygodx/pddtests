#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QIcon>
#include <QDir>
#include <QFile>
#include <QStandardPaths>
#include <QSettings>
#include <QTranslator>
#include <QtQml>
#include "translator.h"
#include <MobileUI>
#include "manager.h"


void prepareSharedFiles(const QString &sharedFolderName)
{
    const QDir sharedFilesFolder(QStandardPaths::writableLocation(QStandardPaths::AppDataLocation));

    if(sharedFilesFolder.mkdir(sharedFolderName) == true)
    {
        const QString sharedFilesPath = (sharedFilesFolder.path() + "/" + sharedFolderName);

        QFile::copy(":/images/logo_falsinsoft.jpg", sharedFilesPath + "/logo_falsinsoft.jpg");
    }
}

int main(int argc, char *argv[])
{
    QQuickStyle::setStyle("Material");
    QIcon::setThemeName("tools");


    MobileUI::registerQML();

    qmlRegisterType<Manager>("Manager", 1, 0, "Manager");

    QGuiApplication app(argc, argv);


    QSettings settings;
    QCoreApplication::setOrganizationName("Nvrtrue");
    QCoreApplication::setOrganizationDomain("nvrtrue.com");
    QCoreApplication::setApplicationName("Pdd_tests");

    QQmlApplicationEngine engine;

    qmlRegisterType<Translator>("Translator", 1, 0 , "Translator");

    const QUrl url(u"qrc:/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    prepareSharedFiles("sharedfiles");

    QNativeInterface::QAndroidApplication::hideSplashScreen();

    return app.exec();
}
