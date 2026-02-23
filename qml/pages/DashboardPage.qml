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

    RowLayout {
        anchors.fill: parent
        anchors.margins: 40
        spacing: 50

        // Left Side: Infos
        GridLayout {
            Layout.fillWidth: true
            Layout.preferredWidth: 60
            Layout.minimumWidth: 1 // Verhindert das Kollabieren

            Layout.alignment: Qt.AlignVCenter
            columns: 2
            columnSpacing: 20
            rowSpacing: 30

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

            // RAM
            ColumnLayout {
                spacing: 1

                Text {
                    text: "Allocated RAM: ? KiB"
                    color: "white"
                    font.pixelSize: 14
                }
                Text {
                    text: "Free RAM: ? KiB"
                    color: "white"
                    font.pixelSize: 14
                }
            }
        }

        // Seperator
        Rectangle {
            Layout.fillHeight: true
            width: 1; color: "white"; opacity: 0.2
        }

        // Right Side: FreeRTOS Tasks
        ColumnLayout {
            Layout.fillWidth: true
            Layout.preferredWidth: 40
            Layout.minimumWidth: 1

            Layout.fillHeight: true
            spacing: 10

            Text {
                text: "FreeRTOS Tasks"
                color: "white"; font.pixelSize: 20; font.bold: true
                Layout.bottomMargin: 10
            }

            ListView {
                Layout.fillWidth: true
                Layout.fillHeight: true
                clip: true
                model: 5  // Bind c++ model here later
                delegate: RowLayout {
                    width: parent.width
                    Text { text: "Task " + index; color: "white"; Layout.fillWidth: true }
                    Text { text: "Running"; color: "#00FF00"; font.family: "monospace" }
                }
            }
        }
    }
}
