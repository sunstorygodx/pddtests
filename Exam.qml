import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import Manager

Page {
    id: root
    width: Screen.width
    height: Screen.height

    property int index: 0

    Manager{
        id: manager

    }

    Component.onCompleted: {

        if (eFrom == "Welcome"){
            console.log("LOADED FROM WELCOME")

            var randomNumber = Math.floor(Math.random() * 35) + 1;
            //console.log("Random Number:", randomNumber);

            manager.examExecuted(randomNumber, settings.lang);
            console.log("exam executed () ", settings.lang);
            var models = [eModel1, eModel2, eModel3, eModel4, eModel5,
                          eModel6, eModel7, eModel8, eModel9, eModel10,
                          eModel11, eModel12, eModel13, eModel14, eModel15,
                          eModel16, eModel17, eModel18, eModel19, eModel20]

            var values = []
            var curr_ans =[]

            for (var i = 0; i < 20; i++){
                manager.loadDataForNext();
                values.push(["", manager.title, manager.ans1, manager.ans2, manager.ans3, manager.ans4, manager.ans5,
                            manager.isImage, manager.curr_ans]);
            }

            for (var k = 0; k <= 20; k++){
                for (var m = 0; m <= 8; m++){
                    if (m == 0){
                        //console.log("Before condition, values[k][7]:", values[k][7]);
                        if (values[k][7] === "1"){
                            //console.log("values[k][7] === 1")

                            models[k].get(m).src = "qrc:/assets/parse/parse_ru_RU/" + randomNumber + "/" + (k+1) + ".jpeg"

                        }
                    }

                    if(m <= 6){
                        models[k].get(m).name = values[k][m];
                    }
                    if (m == 8){
                        curr_ans.push(values[k][m]);
                    }
                }
            }

            // for (var c = 0; c < 20; c++){
            //     if (values[c][7] === 1){
            //         models[c].get(0).src = "qrc:/assets/parse/parse_ru_RU/" + randomNumber + "/" + c + ".jpeg"
            //     }
            // }

            //console.log(values);
            //console.log(curr_ans);
        }

    }

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

////////////////////////////////////////////////! MODELS
    ListModel {
    id: eModel1
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel2
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel3
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel4
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel5
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel6
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel7
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel8
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel9
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel10
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel11
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel12
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel13
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel14
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel15
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel16
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel17
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel18
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel19
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }

    ListModel {
    id: eModel20
        ListElement {
            src: ""
        }
        ListElement {
            name: "TITLE"
        }
        ListElement {
            name: "ANS1"
        }
        ListElement {
            name: "ANS2"
        }
        ListElement {
            name: "ANS3"
        }
        ListElement {
            name: "ANS4"
        }
        ListElement {
            name: "ANS5"
        }
    }
////////////////////////////////////////////////! MODELS


    ColumnLayout{
        id: column
        width: Screen.width
        height: Screen.height - mainFooter.height
        Layout.fillHeight: true

        Item{
            id: topSpacer
            width: Screen.width
            height: Screen.height * 0.01
            Layout.alignment: Qt.AlignTop
        }

        Rectangle{
            id: navigation
            width: Screen.width * 0.98
            height: Screen.height * 0.06
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            color: "transparent"          
            ListView{
                id: navButtonsList
                anchors.fill: parent
                model: 20
                spacing: 6
                clip: true
                delegate: Button{
                    id: navButton
                    width: navigation.width / 7.7
                    height: navigation.height
                    Material.roundedScale: Material.SmallScale
                    text: index+1
                    onClicked: {
                        swipe.currentIndex = index
                    }

                    contentItem: Text {
                        text: navButton.text
                        font: navButton.font
                        opacity: enabled ? 1.0 : 0.3
                        color: settings.isDarkTheme ? "white" : "black"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            orientation: ListView.Horizontal
            highlightRangeMode: ListView.StrictlyEnforceRange
            }

        }

        Rectangle{
            id: main
            color: "transparent"
            width: Screen.width * 0.85
            height: Screen.height * 0.6
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Pane{
                Material.elevation: 10
                anchors.fill: parent
                SwipeView{
                    id: swipe
                    anchors.fill: parent
                    currentIndex: 0
                    clip: true
                    Item{
                        id: e1
                        ListView {
                            id: eList1
                            anchors.fill: parent
                            model: eModel1
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }

                    }
                    Item{
                        id: e2
                        ListView {
                            id: eList2
                            anchors.fill: parent
                            model: eModel2
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect2
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img2
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e3
                        ListView {
                            id: eList3
                            anchors.fill: parent
                            model: eModel3
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect3
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img3
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e4
                        ListView {
                            id: eList4
                            anchors.fill: parent
                            model: eModel4
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect4
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img4
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e5
                        ListView {
                            id: eList5
                            anchors.fill: parent
                            model: eModel5
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect5
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img5
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e6
                        ListView {
                            id: eList6
                            anchors.fill: parent
                            model: eModel6
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect6
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img6
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e7
                        ListView {
                            id: eList7
                            anchors.fill: parent
                            model: eModel7
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect7
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img7
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e8
                        ListView {
                            id: eList8
                            anchors.fill: parent
                            model: eModel8
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect8
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img8
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e9
                        ListView {
                            id: eList9
                            anchors.fill: parent
                            model: eModel9
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect9
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img9
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e10
                        ListView {
                            id: eList10
                            anchors.fill: parent
                            model: eModel10
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect10
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img10
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e11
                        ListView {
                            id: eList11
                            anchors.fill: parent
                            model: eModel11
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect11
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img11
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e12
                        ListView {
                            id: eList12
                            anchors.fill: parent
                            model: eModel12
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect12
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img12
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e13
                        ListView {
                            id: eList13
                            anchors.fill: parent
                            model: eModel13
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect13
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img13
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e14
                        ListView {
                            id: eList14
                            anchors.fill: parent
                            model: eModel14
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect14
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img14
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e15
                        ListView {
                            id: eList15
                            anchors.fill: parent
                            model: eModel15
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect15
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img15
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e16
                        ListView {
                            id: eList16
                            anchors.fill: parent
                            model: eModel16
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect16
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img16
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e17
                        ListView {
                            id: eList17
                            anchors.fill: parent
                            model: eModel17
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect17
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img17
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e18
                        ListView {
                            id: eList18
                            anchors.fill: parent
                            model: eModel18
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect18
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img18
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e19
                        ListView {
                            id: eList19
                            anchors.fill: parent
                            model: eModel19
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect19
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img19
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                    Item{
                        id: e20
                        ListView {
                            id: eList20
                            anchors.fill: parent
                            model: eModel20
                            spacing: 7
                            delegate: Rectangle {
                                id: delegateRect20
                                color: "transparent"
                                width: main.width - 35
                                height: model.src !== "" ? 250 : 50
                                border.width: 2
                                border.color: "green"
                                clip: true

                                Image {
                                    id: img20
                                    width: main.width - 35
                                    height: model.src !== "" ? 250 : 0
                                    source: model.src
                                    fillMode: Image.PreserveAspectFit
                                    visible: model.src !== ""
                                }

                                Label {
                                    text: model.name
                                    Layout.fillHeight: true
                                    visible: model.name !== ""
                                }
                            }
                        }
                    }
                }
            }
        }




        Rectangle{
            id: buttonArea
            color: "transparent"
            width: Screen.width
            height: Screen.height * 0.06
            Layout.alignment: Qt.AlignTop
            Button{
                id: nextButton
                text: "Next"
                width: Screen.width * 0.8
                height: Screen.height * 0.06
                anchors.centerIn: parent
                onClicked: {
                    // Увеличиваем текущий индекс SwipeView
                    swipe.currentIndex = (swipe.currentIndex + 1) % swipe.count;
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


