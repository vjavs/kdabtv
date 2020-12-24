import QtQuick 2.15

Item {
    width: 250
    height: 200

    Rectangle {
        anchors {
	    left: parent.left
	    right: parent.right
	    top: parent.top
	    bottom: parent.verticalCenter
        }
	color: "lightblue"

        CheckBox {
	    anchors.centerIn: parent
	    onChecked: checkValue ? parent.color = "red"
	                          : parent.color = "lightblue"
        }
    }

    // In QML, always prefer a custom property over a signal.
    Rectangle {
        anchors {
	    left: parent.left
	    right: parent.right
	    top: parent.verticalCenter
	    bottom: parent.bottom

        }
        // We can now bind to the state
	color: checkBoxBetter.checked ? "red" : "lightblue"

        CheckBoxBetter {
	    id: checkBoxBetter
	    anchors.centerIn: parent

            // We can now initialize the property explicitly
	    checked: false

            // We still have access to a signal handler on the checked property
	    onCheckedChanged: console.log("checked=" + checked)
        }
    }
}