import QtQuick 2.15

Rectangle {
    width: 400; height: 100; color: "lightblue"

    LineEdit {
        id: lineEdit
	anchors {
	    horizontalCenter: parent.horizontalCenter
	    top: parent.top
	    topMargin: 16
        }
	width: 300; height: 50
    }

    Text {
        anchors {
	    top: lineEdit.bottom
	    topMargin: 12
	    left: parent.left
	    leftMargin: 16
        }
	text: "<b>Summary:</b> " + lineEdit.text
    }

    Image {
        id: clearButton
	source:	"../images/clear.svg"
	anchors {
	    right: parent.right
	    rightMargin: 4
	    verticalCenter: lineEdit.verticalCenter
        }
	opacity: lineEdit.text === "" ? 0.25 : 1.0

        MouseArea {
	    anchors.fill: parent
	    onClicked: lineEdit.text = ""
        }
    }
}