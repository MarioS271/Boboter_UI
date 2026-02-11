/*
 * @file LEDSControlSubpage.qml
 *
 * @authors MarioS271
 * @copyright AGPLv3 License
 */

import Boboter_UI

import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    color: "transparent"

    RowLayout {
        anchors.centerIn: parent
        spacing: 50
        width: parent.width * 0.8
        height: parent.height * 0.8

        // Mode Selection
        ColumnLayout {
            Layout.alignment: Qt.AlignTop
            spacing: 10

            Label {
                text: "Modus Auswahl"
                color: parent.palette.text
                font.bold: true
            }

            Label {
                text: "Modus Auswahl"
                color: "#ffffff"
                font.pixelSize: 18
                font.bold: true
            }
        }

        // LED changer for custom mode
        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            Layout.preferredHeight: 200

            Image {
                id: robotOutline
                source: "qrc:/qt/qml/Boboter_UI/resources/images/outline.svg"
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit

                sourceSize.width: width > 0 ? width : 150
                sourceSize.height: height > 0 ? height : 150
                rotation: 90

                width: parent.width
                height: parent.height
            }
        }
    }
}
