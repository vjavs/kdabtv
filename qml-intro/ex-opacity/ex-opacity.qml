import QtQuick 2.15

Rectangle {
    width: 400
    height: 400
    color: "#00a3fc"

    Rectangle {
        x: 50
	y: 50
	width: parent.width / 2
	height: parent.height / 4 * 3
	color: "white"
	opacity: 0.5

        Rectangle {
	    x: parent.width / 2
	    y: x / 4
	    width: parent.width
	    height: width / 4
	    color: "red"
	    opacity: 0.5
        }

        Rectangle {
	    x: parent.width / 2
	    y: x - 10
	    width: parent.width
	    height: width / 4
	    color: "red"
        }
    }

    Rectangle {
        x: 150
	y: 210
	width: parent.width / 2
	height: parent.width / 8
	color: "red"
	opacity: 0.5
    }

    Rectangle {
        x: 150
	y: 275
        width: parent.width / 2
	height: parent.width / 8
	color: "red"
    }
}