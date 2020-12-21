import QtQuick 2.15

Rectangle {
    id: background
    width: 300; height: 100
    color: "lightblue"

    Rectangle {
        color: "green"
	y: 25
	width: 50; height: 50;
	anchors.right: background.right
    }
}