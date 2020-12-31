import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    width: 600; height: 400

    GridLayout {
        anchors.fill: parent
	anchors.margins: 5

        columns: 3

        // auto positioning based on flow: forth button overflows into second row
	Button {
	    Layout.fillWidth: true
	    text: "One"
        }
	Button {
	    Layout.fillWidth: true
	    text: "Two"
        }
	Button {
	    Layout.fillWidth: true
	    text: "Three"
        }
	Button {
	    Layout.fillWidth: true
	    text: "Four"
        }

        // specific placement
	Button {
	    Layout.row: 1
	    Layout.column: 2
	    Layout.fillWidth: true
	    text: "Five"
        }

        // overflow into next row still works
	Label {
	    text: "File"
        }

        // spanning two columns, same row
	TextField {
	    Layout.columnSpan: 2
	    Layout.fillWidth: true
	    placeholderText: "Enter filename"
        }

        Label {
	    text: "Comment"
        }

        TextArea {
	    Layout.columnSpan: 2
	    Layout.rowSpan: 4
	    Layout.fillWidth: true
	    Layout.fillHeight: true
        }

        Button {
	    Layout.row: 6
	    Layout.column: 0
	    text: "Send"
        }
    }
}