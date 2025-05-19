import QtQuick
import QtQuick3D

Window {
    width: 800
    height: 600
    visible: true
    title: "Coordinate Frames and Stick (Qt Quick 3D)"

    View3D {
        anchors.fill: parent

        environment: SceneEnvironment {
            clearColor: "skyblue"
            backgroundMode: SceneEnvironment.Color
        }

        Model {
            source: "#Cone"
            position: Qt.vector3d(0, 0, 0)
            scale: Qt.vector3d(1, 1.25, 1)            
            materials: [ PrincipledMaterial { baseColor: "yellow"; } ]
        }

        Model {
            source: "#Sphere"
            position: Qt.vector3d(80, 0, 50)            
            materials: [ PrincipledMaterial { baseColor: "green"; } ]
        }

        DirectionalLight {
            eulerRotation.x: -20
            eulerRotation.y: 110
            castsShadow: true
        }

        PerspectiveCamera {
            position: Qt.vector3d(0, 200, 300)
            Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
        }
    }
}
