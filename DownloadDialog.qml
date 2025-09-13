import QtQuick 2.15
import QtQuick.Controls 2.15
Dialog {
id: dl
title: "Download"
property string itemText: ""
function startDownload(text) { itemText = text; open(); progress = 0;
timer.start() }
Column { spacing: 12; width: 420; Label { text: "Downloading: " + itemText }
ProgressBar { id: bar; value: progress/100 } Label { text: progress + "%" } }
property int progress: 0
Timer { id: timer; interval: 150; repeat: true; onTriggered: { progress +=
10; if (progress >= 100) { timer.stop(); close() } } }
}
