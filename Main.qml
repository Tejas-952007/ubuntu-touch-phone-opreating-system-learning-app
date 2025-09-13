import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


import "components"
import "dialogs"

ApplicationWindow {
    id: appWindow
    width: 900
    height: 640
    visible: true
    title: "InternEducation"

    // Stack-based navigation
    StackView {
        id: stack
        anchors.fill: parent
        initialItem: Component { WelcomePage { stackView: stack } }
    }

    
    VideoDialog { id: videoDialog }
    CertificateDialog { id: certDialog }
    CourseDetailsDialog { id: courseDetailsDialog }
    DownloadDialog { id: downloadDialog }
    SyncDialog { id: syncDialog }
}
