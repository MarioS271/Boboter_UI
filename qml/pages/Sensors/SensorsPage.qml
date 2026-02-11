/*
 * @file SensorsPage.qml
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
                    id: sensorsTabBar
                    currentIndex: sensorsStackLayout.currentIndex
                    Layout.rightMargin: 10
                    Layout.leftMargin: 10

                    CustomSmallTabButton { text: "Battery" }
                    CustomSmallTabButton { text: "Ultrasonic" }
                    CustomSmallTabButton { text: "Encoders" }
                    CustomSmallTabButton { text: "Bumpers" }
                    CustomSmallTabButton { text: "Color Sensor" }
                    CustomTabButton { text: "Linefollower Sensors" }
                    CustomSmallTabButton { text: "IMU" }
                    CustomSmallTabButton { text: "I/O Devices" }
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
            id: sensorsStackLayout
            currentIndex: sensorsTabBar.currentIndex
            Layout.fillWidth: true
            Layout.fillHeight: true

            BatterySensorSubpage {}
            UltrasonicSensorSubpage {}
            EncodersSensorSubpage {}
            BumpersSensorSubpage {}
            ColorsensorSensorSubpage {}
            LinefollowerSensorSubpage {}
            IMUSensorSubpage {}
            IOSensorSubpage {}
        }
    }
}
