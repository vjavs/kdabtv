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
	Rectangle {
	    readonly property ListView __lv: ListView.view
	    color: __lv.currentIndex == index ? "gray" : "yellow"
	    implicitHeight: txt.implicitHeight
	    anchors {left: parent.left; right: parent.right}
	    Text {
	        id: txt
	        text: model.name
	        font.pixelSize: 32
            }
	    MouseArea {
	        anchors.fill: parent
	        onClicked: __lv.currentIndex = index
            }
	}
    }

    ListView {
        anchors.fill: parent
	model: nameModel
	delegate: nameDelegate
	clip: true
	onCurrentIndexChanged: console.log(currentIndex)
    }
}