import QtQuick 2.15

Rectangle {
    width: 150; height: 200; color: "white"

    ListModel {
        id: nameModel
	ListElement { name: "Alice" }
	ListElement { name: "Bob" }
	ListElement { name: "Jane" }
	ListElement { name: "Victor" }
	ListElement { name: "Wendy" }
    }

    Component {
        id: nameDelegate
	Text {
	    text: model.name
	    font.pixelSize: 32
	    MouseArea {
	        anchors.fill: parent
		onClicked: nameModel.insert(index, { name: "Item #" + nameModel.count })
            }
        }
    }

    ListView {
        anchors.fill: parent
	model: nameModel
	delegate: nameDelegate
	clip: true
	populate: Transition {
	    NumberAnimation { properties: "x, y"; duration: 300 }
        }

        add: Transition {
	    PropertyAction { property: "transformOrigin"; value: Item.TopLeft }
	    NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration: 200 }
	    NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 200 }
        }

        displaced: Transition {
	    PropertyAction { properties: "opacity, scale"; value: 1 }
	    NumberAnimation { properties: "x,y"; duration: 200 }
        }
    }
}