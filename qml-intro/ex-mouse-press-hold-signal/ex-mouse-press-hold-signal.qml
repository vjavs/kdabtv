import QtQuick 2.15

Rectangle {
    width: 500; height: 200; color: "lightblue";

    Text {
        anchors.centerIn: parent
	text: "Press and hold me"; font.pixelSize: 48

        property bool isActive: false
	color: isActive ? "green" : "black"

        MouseArea {
	    anchors.fill: parent
	    onPressAndHold: parent.isActive ^= true
        }
    }
}