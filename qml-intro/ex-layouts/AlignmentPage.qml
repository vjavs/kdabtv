import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    ColumnLayout {
        anchors.fill: parent
	anchors.margins: 5

        Button {
	    // default alignment
	    // Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
	    text: "One"
        }
	Button {
	    Layout.alignment: Qt.AlignCenter
	    text: "Two"
        }
	Button {
	    // Right and Top within this specific cell of the ColumnLayout
	    Layout.alignment: Qt.AlignRight | Qt.AlignTop
	    text: "Three"
        }
    }
}