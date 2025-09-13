import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

// हे import folders असतील तर direct component वापरता येतील
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

    // Global dialogs (loaded once)
    // फाइल्सचं नाव बरोबर आहे याची खात्री कर
    VideoDialog { id: videoDialog }
    CertificateDialog { id: certDialog }
    CourseDetailsDialog { id: courseDetailsDialog }
    DownloadDialog { id: downloadDialog }
    SyncDialog { id: syncDialog }
}
