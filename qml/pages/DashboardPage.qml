/*
 * @file DashboardPage.qml
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

    GridLayout {
        anchors.centerIn: parent
        columns: 2
        columnSpacing: 20
        rowSpacing: 50

        // Obere Status-Reihe
        Rectangle {
            width: 80
            height: 80
            radius: 40
            color: "transparent"
            border.color: "red"
            border.width: 2

            Text {
                text: "X"
                color: parent.border.color
                font.pixelSize: 40
                anchors.centerIn: parent
            }
        }
        ColumnLayout {
            spacing: 2

            Text { text: "Offline"; color: "white"; font.pixelSize: 24; font.bold: true }
            Text { text: "-"; color: "white"; font.pixelSize: 20 }
            Text { text: "-"; color: "white"; font.pixelSize: 18; opacity: 0.8 }
        }

        // Untere Status-Reihe
        RowLayout {
            Layout.row: 1
            Layout.columnSpan: 2
            Layout.alignment: Qt.AlignHCenter
            spacing: 15

            // Batterie
            Rectangle {
                width: 50; height: 25
                color: "transparent"; border.color: "white"
                Rectangle {
                    width: parent.width * 0.9; height: parent.height * 0.7
                    anchors.centerIn: parent; color: "white"
                }
            }
            Text {
                text: "100% (4,20 V)"
                color: "white"
                font.pixelSize: 22
            }
        }
    }
}
