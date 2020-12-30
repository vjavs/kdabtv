import QtQuick 2.15

Rectangle {
    width: 150; height: 200; color: "white"

    ListModel {
        id: nameModel
	ListElement { age: 41; name: "Alice" }
	ListElement { age: 42; name: "Bob" }
	ListElement { age: 43; name: "Jane" }
	ListElement { age: 44; name: "Victor" }
	ListElement { age: 45; name: "Wendy" }
    }

    Component {
        id: nameDelegate
	Row {
	    spacing: 15
	    Text {
	        text: model.name
	        font.pixelSize: 32
            }
	    Text {
	        text: model.age
	        font.pixelSize: 30
            }
        }
    }

    Column {
        anchors.fill: parent
	Repeater {
	    model: nameModel
	    delegate: nameDelegate
        }
    }
}