import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    ColumnLayout {
        anchors.fill: parent
	anchors.margins: 5

        spacing: 10

        RowLayout {
	    spacing: 10

            Button {
	        text: "One"
            }
	    Button {
	        text: "Two"
            }
	    Button {
	        text: "Three"
            }
        }

        RowLayout {
	    spacing: 10
	    layoutDirection: Qt.RightToLeft

            Button {
	        text: "One"
            }
	    Button {
	        text: "Two"
            }
	    Button {
	        text: "Three"
            }
        }

        RowLayout {
	    spacing: 10

            Button {
	        text: "One"
            }
	    Button {
	        text: "Two"
            }
	    Button {
	        Layout.fillWidth: true
	        text: "Three"
            }
        }

        RowLayout {
	    spacing: 10

            Button {
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
        }

        RowLayout {
            Button {
	        text: "One"
            }
	    // Spacer item
	    Item {
	        Layout.fillWidth: true
            }
	    Button {
	        text: "Two"
            }
	    // Horizontal spacer item
	    Item {
	        Layout.fillWidth: true
            }
	    Button {
	        text: "Three"
            }
        }

        // Vertical spacer item
	Item {
	    Layout.fillHeight: true
        }
    }
}