import QtQuick 2.15
import QtQuick.Controls 1.1

ApplicationWindow {
    width: 800
    height: 600

    TabView {
        anchors.fill: parent

        Tab {
            title: "Resizing and Stretching"
            ResizingPage {}
        }

        Tab {
            title: "Alignment"
            AlignmentPage {}
        }

        Tab {
            title: "Resize & Align"
            ResizeAndAlignPage {}
        }

        Tab {
            title: "Grid"
            GridPage {}
        }
    }
}
