import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Page {

id: profile
property alias stackView: stackView
ColumnLayout { anchors.fill: parent; anchors.margins: 12; spacing: 12 }
Label { text: "Profile"; font.pixelSize: 22 }
Label { text: "Name: Demo User" }
Label { text: "Email: demo@example.com" }
Button { text: "My Certificates"; onClicked: certDialog.openWith("Your
certificates") }
Button { text: "Logout"; onClicked: {
SettingsManager.clearToken(); stackView.pop(); stackView.pop();
stackView.pop()
} }
}
