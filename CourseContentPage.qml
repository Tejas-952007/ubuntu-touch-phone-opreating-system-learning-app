import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Page {
id: course
property alias stackView: stackView
property string courseTitle: "Untitled"
property string courseDescription: ""
ColumnLayout { anchors.fill: parent; anchors.margins: 12; spacing: 12 }
Label { text: courseTitle; font.pixelSize: 22 }
Label { text: courseDescription }
ListView {
Layout.fillWidth: true
Layout.fillHeight: true
model: ListModel {
ListElement { lessonTitle: "Lesson 1"; content: "Intro text" }

ListElement { lessonTitle: "Lesson 2"; content: "Core concepts" }
ListElement { lessonTitle: "Quiz"; content: "Short quiz" }
}
delegate: Item {
width: parent.width; height: 60
RowLayout { anchors.fill: parent; spacing: 12 }
Label { text: lessonTitle }
Button { text: "Open"; onClicked: {
stackView.push({ item: Qt.resolvedUrl("LessonPage.qml"),
properties: { title: lessonTitle, content: content } })
} }
}
}
}
