/*
 * @file ControlsPage.qml
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

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        // Header
        Rectangle {
            Layout.fillWidth: true
            implicitHeight: 50
            color: "transparent"

            RowLayout {
                anchors.fill: parent
                spacing: 15

                TabBar {
                    id: controlsTabBar
                    currentIndex: controlsStackLayout.currentIndex
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10

                    CustomSmallTabButton { text: "LEDs" }
                    CustomSmallTabButton { text: "Buzzer" }
                    CustomSmallTabButton { text: "Motors" }
                    CustomSmallTabButton { text: "Drive Engine" }
                    CustomSmallTabButton { text: "Linefollower" }
                }
            }

            // Lower Border
            Rectangle {
                anchors.bottom: parent.bottom
                width: parent.width
                height: 1
                color: "#333333"
            }
        }

        // Main Content
        StackLayout {
            id: controlsStackLayout
            currentIndex: controlsTabBar.currentIndex
            Layout.fillWidth: true
            Layout.fillHeight: true

            LEDSControlsSubpage {}
            BuzzerControlsSubpage {}
            MotorsControlsSubpage {}
            DriveEngineControlsSubpage {}
            LinefollowerControlsSubpage {}
        }
    }
}
