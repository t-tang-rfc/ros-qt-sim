import QtQuick
import QtQuick3D
import QtQuick3D.Helpers

Window {
	width: 800
	height: 600
	visible: true
	title: "Coordinate Frames and Stick (Qt Quick 3D)"

	View3D {
		id: viewport
		anchors.fill: parent
		camera: camera_node

		environment: SceneEnvironment {
			clearColor: "skyblue"
			backgroundMode: SceneEnvironment.Color
		}

		DirectionalLight {
			eulerRotation.x: -20
			eulerRotation.y: 110
			castsShadow: true
		}

		// @see: https://doc.qt.io/qt-6/qml-qtquick3d-helpers-orbitcameracontroller.html
		Node {
			id: origin_node
			PerspectiveCamera {
				id: camera_node
				position: Qt.vector3d(0, 0, 100)
				clipFar: 1000
				clipNear: 0.1
			}
		}
		OrbitCameraController {
			anchors.fill: parent
			origin: origin_node
			camera: camera_node
		}

		// @note: The default size of built-in geometries is 100 cm.
		// @see: https://doc.qt.io/qt-6/qtquick3dphysics-units.html
		Model {
			source: "#Cone"
			position: Qt.vector3d(0, 0, 0)
			scale: Qt.vector3d(1, 1, 1)
			materials: [ PrincipledMaterial { baseColor: "yellow"; } ]
		}

		Model {
			source: "#Sphere"
			position: Qt.vector3d(100, 0, 0)
			scale: Qt.vector3d(1, 1, 1)
			materials: [ PrincipledMaterial { baseColor: "green"; } ]
		}
	}
}
