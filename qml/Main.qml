/*
 * @file Main.qml
 *
 * @authors MarioS271
 * @copyright AGPLv3 License
 */

import Boboter_UI

import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    width: 1080
    height: 720
    visible: true
    title: qsTr("Boboter UI")

    minimumWidth: 950
    minimumHeight: 600

    header: Rectangle {
        color: "transparent"
        implicitHeight: 50

        Rectangle {
            anchors.bottom: parent.bottom
            width: parent.width
            height: 1
            color: "#333333"
        }

        RowLayout {
            anchors.fill: parent
            implicitHeight: 50
            spacing: 15

            Image {
                source: "qrc:/qt/qml/Boboter_UI/resources/images/logo.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredWidth: 32
                Layout.preferredHeight: 32
                Layout.leftMargin: 15
            }

            Text {
                text: "Boboter UI"
                color: parent.palette.text
                font.pixelSize: 24
                font.bold: true

                Layout.alignment: Qt.AlignLeft
                Layout.topMargin: -5
            }
            Text {
                text: "v" + appVersion
                color: "#c0c0c0"
                font.pixelSize: 10

                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: -4
                Layout.rightMargin: 50
            }

            Item { Layout.fillWidth: true }

            TabBar {
                id: mainTabBar
                currentIndex: mainStackLayout.currentIndex
                Layout.rightMargin: 10

                CustomTabButton { text: "Status" }
                CustomTabButton { text: "Controls" }
                CustomTabButton { text: "Sensors" }
                CustomTabButton { text: "Settings" }
            }
        }
    }

    StackLayout {
        id: mainStackLayout
        anchors.fill: parent
        currentIndex: mainTabBar.currentIndex

        DashboardPage {}
        ControlsPage {}
        SensorsPage {}
        SettingsPage {}
    }
}
