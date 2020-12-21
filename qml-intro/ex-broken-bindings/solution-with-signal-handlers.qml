import QtQuick 2.15

Rectangle {
    width: 680
    height: 240

    Rectangle {
        id: focusBox
	width: 200; height: 200;

        anchors {
	    verticalCenter: parent.verticalCenter
	    left: parent.left
	    leftMargin: 20
        }

	property bool highlighted: false
	color: highlighted ? "lightgreen" : "green"

	Text {
	    anchors.centerIn: parent
	    text: "Observe my color"
        }
    }

    Rectangle {
        anchors.centerIn: parent
	width: 200; height: 200
	color: "yellow"

        MouseArea {
	    id: focusArea
	    anchors.fill: parent
	    hoverEnabled: true
	    onEntered: focusBox.highlighted = true
	    onExited: focusBox.highlighted = false
        }

        Text {
	    anchors.centerIn: parent
	    text: "Move\ninto me"
        }
    }

    Rectangle {
        width: 200; height: 200;
        anchors {
	    verticalCenter: parent.verticalCenter
	    right: parent.right
	    rightMargin: 20
        }
	color: "black"

        MouseArea {
	    id: clickArea
	    anchors.fill: parent
	    onPressed: focusBox.highlighted = true
	    onReleased: focusBox.highlighted = false
        }

	Text {
	    color: "white"
	    anchors.centerIn: parent
	    text: "Click\nme"
        }
    }
}