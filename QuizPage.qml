import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Page {
id: quiz
property alias stackView: stackView
ColumnLayout { anchors.fill: parent; anchors.margins: 12; spacing: 12 }
Label { text: "Quiz"; font.pixelSize: 22 }
// Simple 3-question quiz
property int score: 0
property int current: 0
property var questions: [
{ q: "What is 2+2?", a: ["3","4","5"], correct: 1 },
{ q: "Which is a programming language?", a: ["HTML","Python","CSS"],
correct: 1 },
{ q: "HTML stands for?", a: ["Hyper Text Markup Language","Home Tool
Markup Language","Hyperlinks Text Mark Language"], correct: 0 }
]
ColumnLayout { id: qbox; spacing: 8 }
Label { id: qtext; text: questions[current].q }
Repeater {
model: questions[current].a.length
RadioButton { text: questions[current].a[index]; onClicked: selected =
index }
}
Button {
text: current < questions.length-1 ? "Next" : "Submit"
onClicked: {
var selectedIndex = -1
for (var i=0;i<qbox.children.length;i++) {
var child = qbox.children[i]
if (child && child.checked) selectedIndex = i
}
if (selectedIndex === questions[current].correct) score++
if (current < questions.length-1) {
current++
// refresh
qtext.text = questions[current].q
7
} else {
// go to score page and pass score
stackView.push({ item: Qt.resolvedUrl("ScorePage.qml"),
properties: { score: score, total: questions.length } })
}
}
}
Button { text: "Cancel"; onClicked: stackView.pop() }
}
