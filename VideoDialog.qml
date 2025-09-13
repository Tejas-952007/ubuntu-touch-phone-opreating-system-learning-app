import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia 5.15
Dialog {
id: videoDialog
property alias sourceUrl: video.source
title: "Video"
standardButtons: Dialog.Close
function openWith(url) { video.source = url; open() }
contentItem: Column {
width: 720; height: 420
VideoOutput { id: out; anchors.fill: parent }
MediaPlayer { id: video; autoPlay: true; videoOutput: out }
}
}
