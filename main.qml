import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls.Basic

Window {
    width: 1600
    height: 1200
    visible: true
    title: qsTr("Day 2 Challenge")
    color: "#F3F6FF"

    ColumnLayout {
        spacing: 64
        anchors.centerIn: parent
        Text {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "Open positions"
            font.pixelSize: 32
            color: "#1E2246"
            font.bold: Font.Bold
        }

        ColumnLayout {
            id: tileLayout
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 32
            RowLayout {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                spacing: 32

                JobTile {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    numberOfPosition: 12
                    jobTitle: "Design"
                    icon: "qrc:/icons/Frame 1.png"
                }
                JobTile {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    numberOfPosition: 12
                    jobTitle: "Engineering"
                    icon: "qrc:/icons/Frame 1(1).png"
                }
                JobTile {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    numberOfPosition: 12
                    jobTitle: "Operations"
                    icon: "qrc:/icons/Frame 1(2).png"
                }

            }

            RowLayout {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                spacing: 32
                JobTile {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    numberOfPosition: 12
                    jobTitle: "People"
                    icon: "qrc:/icons/Frame 1(3).png"
                }
                JobTile {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    numberOfPosition: 12
                    jobTitle: "Sales"
                    icon: "qrc:/icons/Frame 1(4).png"
                }
                JobTile {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    numberOfPosition: 12
                    jobTitle: "University"
                    icon: "qrc:/icons/Frame 1(5).png"
                }
            }
        }
        Text {
            Layout.preferredWidth: tileLayout.implicitWidth
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: "We are proud to be an equal opportunity employer that values diversity. We do not discriminate on the basis of race, religion, color, national origin, gender, sexual orientation, age, marital status, veteran status, or disability status."
            font.pixelSize: 16
            color: "#1E2246"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        }
    }
}
