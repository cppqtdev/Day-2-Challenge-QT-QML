import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls.Basic

ShadowRectangle {
    id: root
    property int numberOfPosition: 0
    property string jobTitle: ""
    property string icon: ""

    Layout.preferredWidth: 330
    Layout.preferredHeight:  251
    radius: 16
    color: "#FFFFFF"

    ColumnLayout {
        spacing: 40
        anchors.centerIn: parent
        RowLayout {
            spacing: 20
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Image {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: root.icon
            }
            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: root.jobTitle
                font.pixelSize: 24
                color: "#1E2246"
                font.bold: Font.Medium
            }
        }

        Button {
            id: control
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("%1 open positions").arg(root.numberOfPosition)
            Layout.preferredWidth: 250
            Layout.preferredHeight: 59
            font.bold: Font.Medium
            font.pixelSize: 18

            background: Rectangle {
                anchors.fill: parent
                radius: 8
                color: mouseArea.containsMouse ? "#1E2246" : "#FFFFFF"
                border.color: mouseArea.containsMouse ? "#1E2246" : "#C2C5E2"
            }

            contentItem: IconLabel {
                spacing: control.spacing
                mirrored: control.mirrored
                display: control.display

                icon: control.icon
                text: control.text
                font: control.font
                color: mouseArea.containsMouse ? "#FFFFFF" : "#1E2246"
            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                hoverEnabled: true
                acceptedButtons: Qt.NoButton
            }
        }
    }
}
