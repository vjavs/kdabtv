import QtQuick 2.15

Rectangle {
    width: 400; height: 400; color: "black"

    Grid {
        x: 5; y: 5
	rows: 5; columns: 5; spacing: 10

        Repeater {
	    model: 24
	    Rectangle {
	        width: 70; height: 70
		color: "lightgreen"
		Text {
		    anchors.centerIn: parent
		    text: model.index
		    font.pointSize: 30
                }
            }
        }
    }
}