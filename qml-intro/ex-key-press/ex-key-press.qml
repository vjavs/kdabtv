import QtQuick 2.15

Rectangle {
    width: 400; height: 400;
    color: "#00a3fc";
    focus: true

    Image {
       id: rocket
       anchors.centerIn: parent
       source: "../images/rocket.svg"
    }

    Keys.onLeftPressed:
        rocket.rotation = (rocket.rotation - 10) % 360
    Keys.onRightPressed:
        rocket.rotation = (rocket.rotation + 10) % 360
}