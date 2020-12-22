import QtQuick 2.15

Flickable {
    id: flick
    width: 400; height: 400;
    contentWidth: 1000
    contentHeight: 1000

    Image {
        width: flick.contentWidth
	height: flick.contentHeight
	source: "../images/rocket.svg"
    }
}