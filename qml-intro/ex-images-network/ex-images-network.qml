import QtQuick 2.15

Image {
    id: image
    width: 1366
    height: 768
    source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
    fillMode: Image.PreserveAspectFit

    Rectangle {
        color: "red"
	y: image.height - 30
	height: 30
	width: image.width * image.progress
	visible: image.progress != 1
    }

    onStatusChanged: console.log(sourceSize)
}