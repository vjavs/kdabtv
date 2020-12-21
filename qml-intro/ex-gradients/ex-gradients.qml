import QtQuick 2.15

Rectangle {
    width: 400; height: 400

    gradient: Gradient {
        GradientStop {
	    position: 0.0; color: "green"
        }
	GradientStop {
	    position: 0.5; color: "yellow"
        }
	GradientStop {
	    position: 1.0; color: "blue"
        }
    }

    rotation: 45
    scale: 1.5
}