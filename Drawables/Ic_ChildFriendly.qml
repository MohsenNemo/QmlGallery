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
                    
                    path: "M13,2v8h8c0,-4.42 -3.58,-8 -8,-8zM19.32,15.89C20.37,14.54 21,12.84 21,11L6.44,11l-0.95,-2L2,9v2h2.22s1.89,4.07 2.12,4.42c-1.1,0.59 -1.84,1.75 -1.84,3.08C4.5,20.43 6.07,22 8,22c1.76,0 3.22,-1.3 3.46,-3h2.08c0.24,1.7 1.7,3 3.46,3 1.93,0 3.5,-1.57 3.5,-3.5 0,-1.04 -0.46,-1.97 -1.18,-2.61zM8,20c-0.83,0 -1.5,-0.67 -1.5,-1.5S7.17,17 8,17s1.5,0.67 1.5,1.5S8.83,20 8,20zM17,20c-0.83,0 -1.5,-0.67 -1.5,-1.5S16.17,17 17,17s1.5,0.67 1.5,1.5S17.83,20 17,20z"                }
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
