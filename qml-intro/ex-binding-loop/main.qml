import QtQuick 2.15

Rectangle {
    color: "black"
    implicitWidth: child.implicitWidth
    implicitHeight: child.implicitHeight

    Image {
        id: child
	source: "../images/vertical-gradient.png"
	anchors {
	    fill: parent
	    margins: 5
        }
    }
}