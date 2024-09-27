import QtQuick 2.15
import QtQuick.Controls 2.15
//import QtAndroidTools
import QtQuick.Layouts


Page {
    id: root
    width: Screen.width
    height: Screen.height - mainFooter.height

    header: Pane{
        id: header
        width: Screen.width
        height: 65
        Material.elevation: 6

        Label {
            text: qsTr("Header")
            font.family: "Ubuntu-Regular"
            font.pixelSize: 24
            anchors.centerIn: parent
        }
    }

    ColumnLayout {
        id: col
        width: Screen.width
        height: Screen.height - mainFooter.height
        //anchors.centerIn: parent
        //spacing: 10

        Item{
            id: spacer1
            height: 250
        }

        Label {
            id: helloLabel
            Layout.alignment: Qt.AlignHCenter
            font.family: "Ubuntu-Regular"
            font.pixelSize: 24
            text: qsTr("WELCOME")
            horizontalAlignment: Text.AlignHCenter
        }

        RowLayout{
            Layout.alignment: Qt.AlignHCenter
            spacing: 10
            Button {
                implicitWidth: Screen.width / 2.5
                implicitHeight: 100
                text: "Exam"
                font.family: "Ubuntu-Regular"
                onClicked: {
                    eFrom = "Welcome"
                    stackView.push("Exam.qml")
                }
                Material.roundedScale: Material.SmallScale
                //icon.name: "icon"
                //icon.source: "qrc:/icons/tools/20x20@2/back.png"
            }
            Button {
                implicitWidth: Screen.width / 2.5
                implicitHeight: 100
                text: "RandTest"
                onClicked: {
                    stackView.push("RandTest.qml");
                    mobileUI.vibrate();
                }
                //Material.background: Material.Teal
                Material.roundedScale: Material.SmallScale
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 10
            Button {
                implicitWidth: Screen.width / 2.5
                implicitHeight: 100
                text: "<- LIST"
                onClicked: stackView.pop()
            }
            Button {
                implicitWidth: Screen.width / 2.5
                implicitHeight: 100
                text: "SETTINGS ->"
                onClicked: {
                    stackView.push("Settings.qml");
                    mobileUI.vibrate();
                }
            }
        }
        Item{
            id: spacer2
            height: 100
        }
    }

    onVisibleChanged: {
        if (visible) {
            console.log("Welcome Page is visible");
            helloLabel.text = qsTr("WELCOME");
        }
    }

}

