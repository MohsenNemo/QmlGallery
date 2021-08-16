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
                    
                    path: "M12,22c4.97,0 9,-4.03 9,-9 -4.97,0 -9,4.03 -9,9zM5.6,10.25c0,1.38 1.12,2.5 2.5,2.5 0.53,0 1.01,-0.16 1.42,-0.44l-0.02,0.19c0,1.38 1.12,2.5 2.5,2.5s2.5,-1.12 2.5,-2.5l-0.02,-0.19c0.4,0.28 0.89,0.44 1.42,0.44 1.38,0 2.5,-1.12 2.5,-2.5 0,-1 -0.59,-1.85 -1.43,-2.25 0.84,-0.4 1.43,-1.25 1.43,-2.25 0,-1.38 -1.12,-2.5 -2.5,-2.5 -0.53,0 -1.01,0.16 -1.42,0.44l0.02,-0.19C14.5,2.12 13.38,1 12,1S9.5,2.12 9.5,3.5l0.02,0.19c-0.4,-0.28 -0.89,-0.44 -1.42,-0.44 -1.38,0 -2.5,1.12 -2.5,2.5 0,1 0.59,1.85 1.43,2.25 -0.84,0.4 -1.43,1.25 -1.43,2.25zM12,5.5c1.38,0 2.5,1.12 2.5,2.5s-1.12,2.5 -2.5,2.5S9.5,9.38 9.5,8s1.12,-2.5 2.5,-2.5zM3,13c0,4.97 4.03,9 9,9 0,-4.97 -4.03,-9 -9,-9z"                }
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
