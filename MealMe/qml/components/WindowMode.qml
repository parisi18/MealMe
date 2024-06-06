import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15


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
