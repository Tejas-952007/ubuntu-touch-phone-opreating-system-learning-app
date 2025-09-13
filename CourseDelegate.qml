import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Item {
id: root
property alias courseTitle: titleLabel.text
property alias courseDesc: descLabel.text
signal openCourse()
signal showDetails()
width: parent.width; height: 80
Rectangle { anchors.fill: parent; color: "white"; border.color: "#ddd" }
RowLayout { anchors.fill: parent; anchors.margins: 8; spacing: 12 }
ColumnLayout { Layout.fillWidth: true }
Label { id: titleLabel; text: "Course title"; font.pixelSize: 16 }
Label { id: descLabel; text: "Course desc"; font.pixelSize: 12 }
Button { text: "Open"; onClicked: root.openCourse() }
Button { text: "Details"; onClicked: root.showDetails() }
}
