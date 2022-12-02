import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.WebView 1.0
import Sailfish.WebEngine 1.0

Page {
    id: page
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.Portrait

    WebView {
        id: webView
        anchors.fill: parent
        url: "../scaler/index.html"

        Component.onCompleted: {
            //WebEngineSettings.setPreference("security.disable_cors_checks", true, WebEngineSettings.BoolPref)
            WebEngineSettings.setPreference("security.fileuri.strict_origin_policy", false, WebEngineSettings.BoolPref)
            //WebEngineSettings.pixelRatio = 3
        }
    }
    //onLoadProgressChanged: console.debug("index.html"))
    /*    PullDownMenu {
            MenuItem {
                text: qsTr("About")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("SecondPage.qml"))
            }
        }
        */

}
