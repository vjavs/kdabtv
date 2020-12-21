import QtQuick 2.15

Rectangle {
    // The parent element
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        color: "green"
	width: 50; height: 50
	anchors.centerIn: parent
    }
}