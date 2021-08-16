import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Item {
    property alias controller: shapeController
    property alias baseShape: shape
    property alias controllerBox: shapeControllerBox
    signal controllerClicked(var value)
    property bool doRotate: false

    width: 20
    height: 20
    Rectangle {
        id: shapeControllerBox
        width: parent.width
        height: parent.height

        color: "transparent"

        Shape {
            id: shape
            anchors.fill: parent
            anchors.centerIn: parent
            rotation: doRotate ? 180 : 0
            ShapePath {
                id: shapeController
                fillColor: "white"
                strokeWidth: 1
                strokeColor: "transparent"
                PathSvg {
                    
                    path: "M18,3v2h-2L16,3L8,3v2L6,5L6,3L4,3v18h2v-2h2v2h8v-2h2v2h2L20,3h-2zM8,17L6,17v-2h2v2zM8,13L6,13v-2h2v2zM8,9L6,9L6,7h2v2zM18,17h-2v-2h2v2zM18,13h-2v-2h2v2zM18,9h-2L16,7h2v2z"                }
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                controllerClicked("clicked")
            }
        }
    }
}
