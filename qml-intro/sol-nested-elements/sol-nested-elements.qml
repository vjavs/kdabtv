import QtQuick 2.0

Rectangle {
    id: background
    width: 500
    height: 500
    color: "gray"

    Rectangle {
        id: outter
        x: width / 8
        y: height / 8
        width: background.width - 100
        height: background.height - 100
        color: "lightblue"

        Rectangle {
            x: outter.width / 6
            y: outter.height / 6
	    width: x
	    height: y
        }

        Rectangle {
            y: outter.height / 2
            width: outter.width
            height: y
	    color: "green"

	    Rectangle {
                x: outter.width / 3
	        y: outter.height / 6
	        width: outter.width / 2
	        height: y
	        color: "blue"
	    }
        }
    }
}