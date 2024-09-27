import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts


Page {
    id: root
    width: Screen.width
    height: Screen.height

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

    Column{
        id: col
        spacing: 50
        anchors.centerIn: parent

        Label{
            id: randTestLabel
            font.family: "Ubuntu-Regular"
            font.pixelSize: 24
            text: qsTr("RandTest")
        }

        Row{
            Button {
                text: "Close RandTest"
                onClicked: {
                    stackView.pop();
                }
            }
        }
    }

}
