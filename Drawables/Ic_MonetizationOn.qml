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
                    
                    path: "M12,2C6.48,2 2,6.48 2,12s4.48,10 10,10 10,-4.48 10,-10S17.52,2 12,2zM13.41,18.09L13.41,20h-2.67v-1.93c-1.71,-0.36 -3.16,-1.46 -3.27,-3.4h1.96c0.1,1.05 0.82,1.87 2.65,1.87 1.96,0 2.4,-0.98 2.4,-1.59 0,-0.83 -0.44,-1.61 -2.67,-2.14 -2.48,-0.6 -4.18,-1.62 -4.18,-3.67 0,-1.72 1.39,-2.84 3.11,-3.21L10.74,4h2.67v1.95c1.86,0.45 2.79,1.86 2.85,3.39L14.3,9.34c-0.05,-1.11 -0.64,-1.87 -2.22,-1.87 -1.5,0 -2.4,0.68 -2.4,1.64 0,0.84 0.65,1.39 2.67,1.91s4.18,1.39 4.18,3.91c-0.01,1.83 -1.38,2.83 -3.12,3.16z"                }
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
