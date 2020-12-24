import QtQuick 2.15

Item {
    property bool checked: false

    width: textItem.width + checkImage.width
    height: checkImage.height

    Image {
        id: checkImage
	anchors.left: parent.left
	anchors.verticalCenter: parent.verticalCenter
	source: parent.checked ? "checked.svg" : "unchecked.svg"
    }

    Text {
        id: textItem
	anchors {
	    left: checkImage.right
	    leftMargin: 4
	    verticalCenter: checkImage.verticalCenter
        }
	text: "Option"
	font.pixelSize: checkImage.height - 4
    }

    MouseArea {
        anchors.fill: parent
	onClicked: parent.checked ^= true
    }
}