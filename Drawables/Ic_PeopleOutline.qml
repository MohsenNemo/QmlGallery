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
                    
                    path: "M16.5,13c-1.2,0 -3.07,0.34 -4.5,1 -1.43,-0.67 -3.3,-1 -4.5,-1C5.33,13 1,14.08 1,16.25L1,19h22v-2.75c0,-2.17 -4.33,-3.25 -6.5,-3.25zM12.5,17.5h-10v-1.25c0,-0.54 2.56,-1.75 5,-1.75s5,1.21 5,1.75v1.25zM21.5,17.5L14,17.5v-1.25c0,-0.46 -0.2,-0.86 -0.52,-1.22 0.88,-0.3 1.96,-0.53 3.02,-0.53 2.44,0 5,1.21 5,1.75v1.25zM7.5,12c1.93,0 3.5,-1.57 3.5,-3.5S9.43,5 7.5,5 4,6.57 4,8.5 5.57,12 7.5,12zM7.5,6.5c1.1,0 2,0.9 2,2s-0.9,2 -2,2 -2,-0.9 -2,-2 0.9,-2 2,-2zM16.5,12c1.93,0 3.5,-1.57 3.5,-3.5S18.43,5 16.5,5 13,6.57 13,8.5s1.57,3.5 3.5,3.5zM16.5,6.5c1.1,0 2,0.9 2,2s-0.9,2 -2,2 -2,-0.9 -2,-2 0.9,-2 2,-2z"                }
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
