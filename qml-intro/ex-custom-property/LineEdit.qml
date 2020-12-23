import QtQuick 2.15

Item {
    property alias text: textInput.text

    Rectangle {
        anchors.fill: parent
        property int diameter: 8
        border.color: "green"
        color: "white"
        radius: diameter / 2; smooth: true
        clip: true

        TextInput {
            id: textInput
	    anchors.fill: parent
	    anchors.margins: 2
	    text: "Enter text..."
	    color: focus ? "black" : "gray"
	    font.pixelSize: parent.height - 4
        }
    }
}