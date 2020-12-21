import QtQuick 2.15

Rectangle {
    width: 400; height: 200;
    color: "lightblue"

    Text {
        anchors.centerIn: parent
	text: "Press me"; font.pixelSize: 48
	color: mouseArea.pressed ? "green" : "black"

        MouseArea {
	    id: mouseArea
	    anchors.fill: parent
        }
    }
}