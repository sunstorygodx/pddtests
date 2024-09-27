import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Material
import QtQuick.Controls 2.15  // Добавил импорт для Controls версии 2.15
import QtCore
import Translator
import MobileUI

// page 1
Page {
    id: root
    width: Screen.width
    height: Screen.height

    property int index: 1

    header: Pane {
        id: header
        width: Screen.width
        height: 65
        Material.elevation: 6
        ColumnLayout {
            anchors.fill: parent
            width: header.width
            height: header.height
            Button {
                id: backButton
                text: qsTr("Back")
                Layout.alignment: Qt.AlignLeft
                onClicked: {
                    stackView.push("Welcome.qml");
                    mobileUI.vibrate();
                }
            }
        }
    }

    ColumnLayout {
        id: column
        width: Screen.width
        height: Screen.height - mainFooter.height
        Layout.fillHeight: true
        GridView {
            id: mainGrid
            Layout.fillHeight: parent
            width: Screen.width
            height: Screen.height - (Screen.height * 0.01 + mainFooter.height)
            model: 35
            flow: Grid.LeftToRight
            cellWidth: Screen.width / 3
            cellHeight: Screen.height / 8
            delegate: Button {
                width: mainGrid.cellWidth
                height: mainGrid.cellHeight
                text: "Шаблон "+(index + 1)
                onClicked:{
                    stackView.push("Exam.qml")
                }

            }
        }
        Item{
            id: bottomSpacer
            width: Screen.width
            height: Screen.width * 0.1 + mainFooter.height + 40
            Layout.alignment: Qt.AlignBottom
        }
    }
}
