import QtQuick 2.15
import QtQuick.Controls 2.15

import QtQuick.Layouts 1.15
Page {
id: welcome
property alias stackView: stackView
Rectangle {
anchors.fill: parent
color: "#f5f7fb"
ColumnLayout {
anchors.centerIn: parent
spacing: 20
Image { source: "qrc:/images/logo.png"; width: 160; height: 160 }
Label { text: "Welcome to InternEducation"; font.pixelSize: 24 }
Label { text: "Learn. Practice. Get certified." }
RowLayout {
spacing: 12
Button { text: "Login"; onClicked:
stackView.push(Qt.resolvedUrl("LoginPage.qml")) }
Button { text: "Sign up"; onClicked:
stackView.push(Qt.resolvedUrl("SignupPage.qml")) }
Button { text: "Browse Catalog"; onClicked:
stackView.push(Qt.resolvedUrl("CatalogPage.qml")) }
}
}
}
}
