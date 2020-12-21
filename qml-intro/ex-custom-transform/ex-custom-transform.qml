import QtQuick 2.15

Rectangle {
    id: root
    color: "lightgrey"
    width: 500
    height: 500

    Item {
        property int _minSide: Math.min(root.width, root.height)
	x: 10 + (root.width - _minSide) / 2
	y: 10 + (root.height - _minSide) / 2
	width: _minSide - 20
	height: _minSide - 20

        scale: Math.min(width / background.sourceSize.width,
	                height / background.sourceSize.height)
        transformOrigin: Item.TopLeft

        Image {
	    id: background
	    source: "background.png"
        }

        Image {
	    // The 914 is the anchor point of the arm
	    id: smallArm
	    source: "smallArm.png"
	    x: background.width / 2 - width / 2
	    y: background.height / 2 - 914

            transform: Rotation {
	        origin.x: smallArm.width / 2
		origin.y: 914

                RotationAnimation on angle {
		    from: 0
		    to: 360
		    duration:  12 * 60 * 60000
		    loops: Animation.Infinite
                }
            }
        }

        Image {
	    // The 1255 is the anchor point of the arm
	    id: largeArm
	    source: "largeArm.png"
	    x: background.width / 2 - width / 2
	    y: background.height / 2 - 1255

            transform: Rotation {
	        origin.x: largeArm.width / 2
		origin.y: 1255

                RotationAnimation on angle {
		    from: 0
		    to: 360
		    duration: 60 * 60000
		    loops: Animation.Infinite
                }
            }
        }
    }
}