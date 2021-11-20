import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.WebView 1.0

Page {
    id: page
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.Portrait
    //SilicaWebView {
    WebView {
        id: webView
        anchors.fill: parent
        url: "../scaler/index.html" 

	//onLoadProgressChanged: console.debug("index.html"))
        PullDownMenu {
            MenuItem {
                text: qsTr("About")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("SecondPage.qml"))
            }
        }
    }

}
