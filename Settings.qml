import QtQuick 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts
//page 3
Page {
    id: root
    width: Screen.width
    height: Screen.height

    //Material.background: Material.Teal

    header: Pane{
        id: header
        width: Screen.width
        height: 65
        Material.elevation: 6

        ColumnLayout{
            anchors.fill: parent
            width: header.width
            height: header.height
            Button{
                id: backButton
                text: qsTr("Back")
                Layout.alignment: Qt.AlignLeft
                onClicked: {
                    stackView.pop();
                    mobileUI.vibrate();
                }
            }
        }
    }

    ColumnLayout {
        anchors.centerIn: parent
        Label {
            id: settingsLabel
            font.family: "Ubuntu-Regular"
            font.pixelSize: 24
            text: qsTr("SETTINGS TAB")
            horizontalAlignment: Text.AlignHCenter
        }

        Row {
            spacing: 10
            Button {
                text: "<- Welcome"
                Material.background: Material.Teal
                Material.roundedScale: Material.SmallScale
                onClicked: {
                    stackView.pop();
                    mobileUI.vibrate();
                }
            }
        }
        Row{
            spacing: 10
            Button {
                text: "ru"
                onClicked: {
                    tr.chooseLang("ru_RU");
                    reloadTranslate();
                    reloadTranslate();
                    settings.lang = "ru_RU"
                }
            }
            Button {
                text: "uz"
                onClicked: {
                    tr.chooseLang("uz_UZ");
                    reloadTranslate();
                    settings.lang = "uz_UZ";
                }
            }
            Button {
                text: "уз"
                onClicked: {
                    tr.chooseLang("uz_UZ@cyrillic");
                    reloadTranslate();
                    settings.lang = "uz_UZ@cyrillic";
                }
            }
        }
        Row{
            spacing: 10
            Label{
                font.family: "Ubuntu-Regular"
                font.pixelSize: 15
                text: "Light"
            }

            Switch{
                id: themeSwitch
                checked: settings.isDarkTheme ? true : false
                onCheckedChanged: {
                    settings.isDarkTheme = themeSwitch.checked
                }
            }

            Label{
                font.family: "Ubuntu-Regular"
                font.pixelSize: 15
                text: "Dark"
            }
        }
        Row{
            Button{
                text: "reset isFirstExec"
                onClicked: {
                    settings.isFirstExec = true;
                }
            }
        }
    }



    function reloadTranslate(){
        settingsLabel.text = qsTr("SETTINGS TAB");
    }

}
