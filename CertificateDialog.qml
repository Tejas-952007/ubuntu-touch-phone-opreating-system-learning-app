import QtQuick 2.15
import QtQuick.Controls 2.15
Dialog {
id: certDialog
property string certText: ""
title: "Certificate"
standardButtons: Dialog.Close
function openWith(text) { certText = text; open() }
contentItem: Column { spacing: 8; width: 500; height: 300; Label { text:
certText } Button { text: "Download"; onClicked:
downloadDialog.startDownload(certText) } }
}
