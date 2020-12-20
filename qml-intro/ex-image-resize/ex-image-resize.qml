import QtQuick 2.15

Rectangle {
    width: 480
    height: 480

    BorderImage {
        x: parent.width / 2 - width / 2
        y: parent.height / 2 - height / 2
        source: "../images/colors.png"
        width: sourceSize.width * 2.5
        height: sourceSize.height * 2.5
	
	border{ left: 30; top: 30; right: 30; bottom: 30 }

        horizontalTileMode: BorderImage.Round
        verticalTileMode: BorderImage.Round

        Component.onCompleted: console.log(width, height, sourceSize)
    }
}