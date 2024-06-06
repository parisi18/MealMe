import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Window {
    id: splashScreen

    readonly property color darkColor: "#31363F"
    readonly property color lightColor: "#EEEEEE"

    width: 1360
    height: 768
    visible: true
    title: qsTr("Hello, " + username)

    color: appManager.isNightMode ? splashScreen.darkColor : splashScreen.lightColor

    // Custom Properties
    property string username
    property string password

    Column {
        anchors.centerIn: parent
        spacing: 20
        Text {
          color: appManager.isNightMode ? splashScreen.lightColor : splashScreen.darkColor
          text: qsTr("Is night mode on? - ") + appManager.isNightMode
        }

        Button {
          anchors.horizontalCenter: splashScreen.horizontalCenter
          text: qsTr("Change mode")
          palette.buttonText: splashScreen.lightColor
          // change isNightMode on clicked
          onClicked: {
            appManager.isNightMode = !appManager.isNightMode
          }
        }
    }
}
