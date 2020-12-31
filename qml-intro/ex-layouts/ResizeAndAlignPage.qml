import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    width: 400; height: 300

    ColumnLayout {
        anchors.fill: parent
	anchors.margins: 5

        RowLayout {
	    Layout.alignment: Qt.AlignTop

            Label {
	        text: "Filename"
            }

            TextField {
	        // stretch to cover the rest of the row layout
		Layout.fillWidth: true
            }
        }

        RowLayout {
	    Layout.alignment: Qt.AlignBottom | Qt.AlignRight

            Button {
	        text: "Ok"
            }

	    Button {
	        text: "Cancel"
            }
        }
    }
}