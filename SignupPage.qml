import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Page {
id: signup
property alias stackView: stackView
ColumnLayout { anchors.fill: parent; anchors.margins: 24; spacing: 12 }
Label { text: "Sign up"; font.pixelSize: 22 }
TextField { id: name; placeholderText: "Full name" }
TextField { id: email; placeholderText: "Email" }
TextField { id: password; placeholderText: "Password"; echoMode:
TextInput.Password }

Button {
text: "Create account"
onClicked: {
// Minimal validation, then go to catalog
if (name.text && email.text && password.text) {
SettingsManager.saveToken("demo-token")
stackView.push(Qt.resolvedUrl("CatalogPage.qml"))
} else {
messageDialog.text = "Please fill all fields";
messageDialog.open()
}
}
}
Button { text: "Back"; onClicked: stackView.pop() }
Dialog { id: messageDialog; title: "Error"; standardButtons: Dialog.Ok;
contentItem: Label { text: "" } }
}
