import QtQuick 2.15

Rectangle {
    width: 200; height: 112;
    color: "lightblue";

    TextInput {
        anchors {
	    left: parent.left
	    right: parent.right
        }
	y: 16
	text: "Field 1"; font.pixelSize: 32
	color: activeFocus ? "black" : "gray"
	focus: true
	activeFocusOnTab: true
    }

    TextInput {
        anchors {
	    left: parent.left
	    right: parent.right
        }
	y: 64
	text: "Field 2"; font.pixelSize: 32
	color: activeFocus ? "black" : "gray"
	activeFocusOnTab: true
    }
}