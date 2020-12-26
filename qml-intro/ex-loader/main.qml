import QtQuick 2.15

Rectangle {
    width: 300; height: 100

    Loader {
        id: loader
	source: "LineEdit.qml"
	anchors { left: parent.left; right: parent.right; top: parent.top }
	asynchronous: true
    }

    Text {
        id: txt1
	text: "Binding: " + (loader.item ? loader.item.text : "")
	anchors { left: parent.left; right: parent.right; top: loader.bottom; margins: 5 }
    }

    Text {
        id: txt2
	anchors { left: parent.left; right: parent.right; top: txt1.bottom; margins: 5 }
    }

    Binding {
        target: loader.item
	property: "text"
	value: "Hello world"
    }

    Connections {
        target: loader.item
	onReturnPressed: txt2.text = "Return Pressed: " + text
    }
}