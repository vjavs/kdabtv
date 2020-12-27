import QtQuick 2.15

Rectangle {
    width: 200; height: 200; color: "#000040"

    Image {
        id: rocket
	anchors.centerIn: parent
	source: "../images/rocket.png"
    }

    ParallelAnimation {
        NumberAnimation {
	    target: rocket; properties: "scale"
	    from: 0.5; to: 1.0; duration: 1000
        }
	NumberAnimation {
	    target: rocket; properties: "opacity"
	    from: 0.0; to: 1.0; duration: 1000
        }
	running: true
    }
}