import QtQuick 2.15

Rectangle {
    width: 150; height: 300; color: "white"

    ListModel {
        id: nameModel
	ListElement { name: "Alice"; team: "Crypto" }
	ListElement { name: "Bob"; team: "Crypto" }
	ListElement { name: "Jane"; team: "QA" }
	ListElement { name: "Victor"; team: "QA" }
	ListElement { name: "Wendy"; team: "Graphics" }
    }

    Component {
        id: nameDelegate
	Text {
	    readonly property ListView __lv: ListView.view
	    width: parent.width
	    text: model.name
	    font.pixelSize: 24

            MouseArea {
	        anchors.fill: parent
		onClicked: __lv.currentIndex = index
            }
        }
    }

    ListView {
        model: nameModel
	delegate: nameDelegate
	anchors.fill: parent
	focus: true
	clip: true

        highlight: Rectangle {
	    color: "lightblue"
	    width: parent.width
        }

	section.property: "team"
	section.criteria: ViewSection.FullString

        section.delegate: Rectangle {
	    color: "#b0dfb0"
	    width: parent.width
	    implicitHeight: txt.implicitHeight + 4
	    Text {
	        id: txt
		anchors.centerIn: parent
		font.pixelSize: 16
		font.bold: true
		text: section
            }
        }
    }
}