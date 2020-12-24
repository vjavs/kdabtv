import QtQuick 2.15

Item {
    signal checked(bool checkValue)

    width: textItem.width + checkImage.width
    height: checkImage.height

    Image {
        id: checkImage
	anchors.left: parent.left
	anchors.verticalCenter: parent.verticalCenter
	source: toggleArea.__checked ? "checked.svg" : "unchecked.svg"
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
        id: toggleArea
	anchors.fill: parent

        // define internal state property
	property bool __checked: false

        onClicked: {
	    __checked ^= true
	    // emit signal with new value
	    parent.checked(__checked)
        }
    }
}