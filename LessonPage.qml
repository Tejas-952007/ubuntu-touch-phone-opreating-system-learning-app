import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Page {
id: lesson
property alias stackView: stackView
property string title: "Lesson"
property string content: ""
ColumnLayout { anchors.fill: parent; anchors.margins: 12; spacing: 12 }
Label { text: title; font.pixelSize: 20 }
TextArea { text: content; readOnly: true; Layout.fillHeight: true }
RowLayout { spacing: 12 }
Button { text: "Play video"; onClicked: videoDialog.openWith("https://
sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4") }
Button { text: "Take Quiz"; onClicked:
stackView.push(Qt.resolvedUrl("QuizPage.qml")) }
Button { text: "Back"; onClicked: stackView.pop() }
}
