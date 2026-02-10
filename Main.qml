import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Boboter UI")

    header: RowLayout {
        spacing: 15

        Image {
            source: "images/logo.png"
            fillMode: Image.PreserveAspectFit

            Layout.preferredWidth: 48
            Layout.preferredHeight: 48
            Layout.leftMargin: 15
        }

        Text {
            text: "Boboter UI v" + appVersion
            color: colors.text
            font.pixelSize: 24

            Layout.alignment: Qt.AlignLeft
        }

        TabBar {
            id: tabBar
            Layout.fillWidth: true
            currentIndex: stackLayout.currentIndex

            CustomTabButton { text: "Monitoring" }
            CustomTabButton { text: "Control" }
            CustomTabButton { text: "Settings" }
        }
    }

    StackLayout {
        id: stackLayout
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        // Page 1
        Rectangle {
            color: "transparent"

            Text {
                text: "Page 1"
                color: colors.text
                anchors.centerIn: parent
            }
        }

        // Page 2
        Rectangle {
            color: "transparent"

            Text {
                text: "Page 2"
                color: colors.text
                anchors.centerIn: parent
            }
        }

        // Page 3
        Rectangle {
            color: "transparent"

            Text {
                text: "Page 3"
                color: colors.text
                anchors.centerIn: parent
            }
        }
    }
}
