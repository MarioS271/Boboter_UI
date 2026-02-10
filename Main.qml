import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Boboter UI")

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
            spacing: 15

            Image {
                source: "images/logo.png"
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

        StatusPage {}
        ControlsPage {}
        SensorsPage {}
        SettingsPage {}
    }
}
