import QtQuick 2.15

Rectangle {
    // The parent element
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        color: "green"
	anchors {
	    fill: parent
	    margins: 10
        }
    }
}