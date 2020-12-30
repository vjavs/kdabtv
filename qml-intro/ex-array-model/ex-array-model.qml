import QtQuick 2.15

Grid {
    x: 15; y: 15; width: 300; height: 300

    columns: 2; rows: 2; spacing: 20

    Repeater {
        model: ["red", "green", "silver", "blue"]
	Rectangle {
	    width: 125; height: 125; color: model.modelData
        }
    }
}