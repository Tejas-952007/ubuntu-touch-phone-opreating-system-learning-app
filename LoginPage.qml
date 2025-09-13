import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Page {
id: login
property alias stackView: stackView
ColumnLayout { anchors.fill: parent; anchors.margins: 24; spacing: 12 }
Label { text: "Login"; font.pixelSize: 22 }

TextField { id: email; placeholderText: "Email" }
TextField { id: password; placeholderText: "Password"; echoMode:
TextInput.Password }
Button {
text: "Sign in"
onClicked: {
// Simple local auth simulation
if (email.text.length > 3 && password.text.length > 3) {
SettingsManager.saveToken("demo-token")
stackView.push(Qt.resolvedUrl("CatalogPage.qml"))
} else {
Qt.callLater(function(){
messageDialog.text = "Enter valid credentials";
messageDialog.open()
})
}
}
}
Button { text: "Back"; onClicked: stackView.pop() }
Dialog { id: messageDialog; title: "Error"; standardButtons: Dialog.Ok;
contentItem: Label { text: "" } }
}
