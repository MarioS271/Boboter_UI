/*
 * @file CustomTabButton.qml
 *
 * @authors MarioS271
 * @copyright AGPLv3 License
 */

import Boboter_UI

import QtQuick
import QtQuick.Controls 2.15

TabButton {
    id: button
    width: 150

    font.bold: true

    contentItem: Text {
        text: button.text
        font: button.font
        color: button.checked ? parent.palette.accent : parent.palette.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        color: button.hovered ? Qt.alpha("white", 0.05) : "transparent"
        Behavior on color { ColorAnimation { duration: 200 } }

        radius: 6

        Rectangle {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter

            width: parent.width - 15
            height: 1

            color: parent.palette.accent
            visible: button.checked
        }
    }
}
