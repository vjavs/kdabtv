import QtQuick 2.15

Rectangle {
    id: root
    width: image.implicitHeight / 2
    height: image.implicitWidth / 2
    border.color: "blue"
    radius: 6
    property alias source: image.source
    property alias text: label.text
    signal clicked

    Image {
        id: image
	width: root.width
	height: root.height
	anchors.centerIn: parent
	smooth: true
	scale: 0.8
	MouseArea {
	    anchors.fill: parent
	    onClicked: root.clicked()
        }
    }

    Text {
        id: label
	width: parent.width
	anchors.bottom: parent.bottom
	horizontalAlignment: Text.AlignHCenter
    }
}