import QtQuick 2.15

Rectangle {
    id: background
    width: 300; height: 100
    color: "lightblue"

    Rectangle {
        color: "green"
        height: 50

        anchors.top: background.top
        anchors.left: background.left
	anchors.right: background.right
    }
}