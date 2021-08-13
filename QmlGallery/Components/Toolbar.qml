import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.12

import "Drawables/"

Window {
    visible: true
    width: 480
    height: 720
    title: qsTr("Qml Gallery")
    color: materialColors.grey_100_

    Colors {
        id: materialColors
    }

    Rectangle {
        id: toolbar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        height: 50
        color: materialColors.grey_100_

        Ic_menu {
            id: ic_menu
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.verticalCenter: parent.verticalCenter
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1

            function onControllerClicked(value) {
                console.log(value)
            }
        }

        Text {
            id: appName
            anchors.left: ic_menu.right
            anchors.verticalCenter: ic_menu.verticalCenter
            anchors.leftMargin: 20
            color: "white"
            text: qsTr("Qml Gallery")
            font.pixelSize: 16
            font.family: "Sans Serif"
            font.bold: true
        }

        Ic_notification {
            id: icNotificationBox
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 8
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
            function onControllerClicked(value) {
                console.log(value)
            }
        }

        Ic_search {
            id: icSearchBox
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: icNotificationBox.left
            anchors.rightMargin: 28
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
            function onControllerClicked(value) {
                console.log(value)
            }
        }
    }
}
