import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Material
import QtCore
import Translator
//import QtAndroidTools
import MobileUI



ApplicationWindow {
    visible: true
    id: app
    width: Screen.width
    height: Screen.height
    title: "LIST"


    Material.theme: settings.isDarkTheme ? Material.Dark : Material.Light
    Material.accent: Material.Red
    //Material.foreground: Material.Purple


    footer: Pane {
        id: mainFooter
        width: Screen.width
        height: 65
        Material.elevation: 10000
        Material.background: Material.accent
        Label {
            text: qsTr("I'm a footer!")
            font.family: "Ubuntu-Regular"
            font.pixelSize: 24
            anchors.centerIn: parent
        }
    }

    MobileUI{
        id: mobileUI
        statusbarColor: settings.isDarkTheme ?  "#1c1c1c" : "#fffbfe"
    }


    Translator{
        id: tr
    }

    Settings{
        id: settings
        property bool isFirstExec: true
        property string lang: "ru_RU"
        property bool isDarkTheme: false
    }

    FontLoader{
        id: fontLoader
        source: "qrc:/fonts/Ubuntu-Regular.ttf"
    }
    FontLoader {
        id: fontLoader2
        source: "qrc:/fonts/Ubuntu-BoldItalic.ttf"
    }


    property bool test: false
    property string eFrom: "default"


    StackView {
        id: stackView
        anchors.fill: parent       

        Component.onCompleted: {
            // Добавление первой страницы в стек при инициализации приложения

            tr.chooseLang(settings.lang);
            console.log("lang is ", settings.lang);

            if (settings.isFirstExec === false){
                console.log(" NOT first exec")
                stackView.push("List.qml", "Welcome.qml");

                //stackView.push("Welcome.qml");
            }
            else{
                console.log("first exec")
                firstDialog.open();
                stackView.push("List.qml", "Welcome.qml");
            }
            console.log(settings.isDarkTheme)
        }
    }

    Dialog{
        // Диалог выбора языка
        id: firstDialog
        modal: true
        focus: true
        x: (Screen.width - width) / 2
        y: Screen.height / 6
        width: Math.min(Screen.width, Screen.height) / 3 * 2
        closePolicy: Dialog.NoAutoClose
        Row{
            spacing: 20
            Button{
                text: "Русский"
                onClicked: {
                    settings.lang = "ru_RU"
                    tr.chooseLang("ru_RU");
                    settings.isFirstExec = false;
                    firstDialog.accept();
                }
            }
            Button{
                text: "O'zbek"
                onClicked: {
                    settings.lang = "uz_UZ"
                    tr.chooseLang("uz_UZ");
                    settings.isFirstExec = false;
                    firstDialog.accept();
                }
            }
            Button{
                text: "Узбекский"
                onClicked: {
                    settings.lang = "uz_UZ@cyrillic"
                    tr.chooseLang("uz_UZ@cyrillic");
                    settings.isFirstExec = false;
                    firstDialog.accept();
                }
            }
        }
    }



}
