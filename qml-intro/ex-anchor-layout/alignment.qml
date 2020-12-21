import QtQuick 2.15

Rectangle {
    id: background
    width: 400; height: 200
    color: "lightblue"

    Image {
        id: book; source: "../images/book.svg"
	anchors {
	    left: background.left
	    leftMargin: background.width / 16
	    verticalCenter: background.verticalCenter
	}
    }

    Text {
        text: "Writing"; font.pixelSize: 32
	anchors {
	    left: book.right
	    leftMargin: 32
	    baseline: book.verticalCenter
        }
    }
}