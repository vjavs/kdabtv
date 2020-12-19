import QtQuick 2.0

Item {
    width: 300
    height: 115

    TextInput {
        id: textElement
	x: 50
	y: 25
	text: "Qt Quick"
	font.family: "Helvetica"
	font.pixelSize: 50
    }

    Rectangle {
        x: 50
	y: 75
	height: 5
	width: textElement.width
	color: "green"
    }
}