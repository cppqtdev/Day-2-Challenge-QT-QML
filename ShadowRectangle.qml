import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects


Pane {
    id: control
    padding: 0
    property real radius: 16
    property var gradient: null
    property color color: "#FFFFFF"

    background: Item {
        Rectangle {
            id: backgroundID
            anchors.fill: parent
            color: control.color
            radius: control.radius
            gradient: control.gradient
        }
        DropShadow {
            anchors.fill: backgroundID
            horizontalOffset: 2
            verticalOffset: 2
            radius: 8.0
            samples: 18
            color: alphaColor("#80000000",0.3)
            source: backgroundID
        }
    }

    function alphaColor(color, alpha) {
        let actualColor = Qt.darker(color, 1)
        actualColor.a = alpha
        return actualColor
    }
}
