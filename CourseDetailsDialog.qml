import QtQuick 2.15
import QtQuick.Controls 2.15
Dialog {
id: details
property string titleText: ""
property string descText: ""
title: titleText
function openWith(t, d) { titleText = t; descText = d; open() }
contentItem: Column { spacing: 8; width: 420; Label { text: descText } }
}
