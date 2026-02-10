import QtQuick
import QtQuick.Controls 2.15

TabButton {
    id: button

    contentItem: Text {
        text: button.text
        font: button.font
        color: button.checked ? color.accent : color.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        color: "transparent"

        Rectangle {
            anchors.bottom: parent.bottom
            width: parent.width
            height: 2
            color: colors.accent
            visible: button.checked
        }
    }
}
