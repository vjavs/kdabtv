import QtQuick 2.15

ListView {
    id: view

    property var collapsed: ({})

    width: 150
    height: 250
    focus: true
    clip: true

    model: NameModel { }

    delegate: NameDelegate {
        readonly property ListView __lv: ListView.view

        anchors {
	    left: parent.left
	    leftMargin: 2

            right: parent.right
	    rightMargin: 2
        }

        expanded: __lv.isSectionExpanded(model.team)

        MouseArea {
	    anchors.fill: parent
	    onClicked: __lv.currentIndex = index
        }
    }

    highlight: HighlightDelegate {
        width: parent.width
	anchors {
	    left: parent.left
	    right: parent.right
        }
    }

    section {
        property: "team"
	criteria: ViewSection.FullString

        delegate: SectionDelegate {
	    anchors {
	        left: parent.left
		right: parent.right
            }

            text: section

            onClicked: view.toggleSection(section)
        }
    }

    function isSectionExpanded(section) {
        return !(section in collapsed);
    }

    function showSection(section) {
        delete collapsed[section]
	collapsedChanged(); // emit signal
    }

    function hideSection(section) {
        collapsed[section] = true
	collapsedChanged(); // emit signal
    }

    function toggleSection(section) {
        if (isSectionExpanded(section)) {
	    hideSection(section)
        } else {
	    showSection(section)
        }
    }
}