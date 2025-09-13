import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    id: scorePage
    property alias stackView: stackView
    property int score: 0
    property int total: 0

    Column {
        anchors.centerIn: parent
        spacing: 12

        Label { text: "Quiz Results"; font.pixelSize: 20 }
        Label { text: "Score: " + score + " / " + total }

        Button {
            text: "Get Certificate"
            onClicked: certDialog.openWith("Certificate for " + score + "/" + total)
        }

        Button {
            text: "Back to Catalog"
            onClicked: {
                stackView.pop()
                stackView.pop()
            }
        }
    }
}
