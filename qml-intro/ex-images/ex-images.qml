import QtQuick 2.15

Rectangle {
    width: 400
    height: 400
    color: "#00a3fc"

    Image {
        x: 150
	y: 150
	source: "../images/rocket.png"
	width: sourceSize.width * 2
	height: sourceSize.height * 2
	Component.onCompleted: console.log(width, height, sourceSize)
    }
}