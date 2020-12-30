import QtQuick 2.15

Text {
    clip: true
    text: model.name
    font.pixelSize: 24

    property bool expanded: false

    height: expanded ? implicitHeight : 0

    Behavior on height {
        NumberAnimation { duration: 200 }
    }
}