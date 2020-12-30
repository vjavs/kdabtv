import QtQuick 2.15

Rectangle {
    width: 150; height: 220; color: "white"

    ListModel {
        id: nameModel
	ListElement { name: "Alice" }
	ListElement { name: "Bob" }
	ListElement { name: "Jane" }
	ListElement { name: "Harry" }
	ListElement { name: "Wendy" }
    }

    Component {
        id: nameDelegate
	Text {
	    readonly property ListView __lv: ListView.view
	    width: parent.width
	    text: model.name
	    font.pixelSize: 32

            MouseArea {
	        anchors.fill: parent
		onClicked: __lv.currentIndex = model.index
            }
        }
    }

    ListView {
        anchors.fill: parent
	model: nameModel
	delegate: nameDelegate
	focus: true
	clip: true
	header: Rectangle {
	    anchors { left: parent.left; right: parent.right }
	    height: 10
	    color: "pink"
        }
	footer: Rectangle {
	    anchors { left: parent.left; right: parent.right }
	    height: 10
	    color: "lightblue"
        }
	highlight: Rectangle {
	    anchors { left: parent.left; right: parent.right }
	    color: "lightgray"
        }
    }
}