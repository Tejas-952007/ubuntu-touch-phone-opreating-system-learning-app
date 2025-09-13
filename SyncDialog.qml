import QtQuick 2.15
import QtQuick.Controls 2.15
Dialog {
id: sync
title: "Sync"
Column { spacing: 12; width: 420; Label { text: "Syncing with Odoo
backend..." } Button { text: "Start"; onClicked: {
// simulate sync
syncStatus.text = "Sync in progress..."
Qt.callLater(function() { syncStatus.text = "Sync complete" })
} } Label { id: syncStatus; text: "Idle" } }
}
