import QtQuick 2.15

Rectangle {
    id: window
    color: "black"
    width: 200
    height: 200

    Flipable {
        id: flipable
	anchors.centerIn: parent
	property bool flipped: false

        front: Rectangle {
	    color: "green"
	    width: 100
	    height: 100
	    anchors.centerIn: parent
        }

	back: Rectangle {
	    color: "red"
	    width: 100
	    height: 100
	    anchors.centerIn: parent
        }

        transform: Rotation {
	    axis.x: 1; axis.y: 0; axis.z: 0
	    angle: flipable.flipped ? 180 : 0

            Behavior on angle {
	        NumberAnimation { duration: 500 }
            }
        }
    }

    Text {
        text: flipable.side == Flipable.Front ? "Front" : "Back"
	anchors.bottom: parent.bottom
	anchors.horizontalCenter: parent.horizontalCenter
	color: "white"
    }

    MouseArea {
        anchors.fill: parent
	onClicked: flipable.flipped ^= true
    }
}