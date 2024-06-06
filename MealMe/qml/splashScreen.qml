import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "components"

Window {
    id: splashScreen
    width: 380
    height: 580
    visible: true
    color: "#00000000"
    title: qsTr("MealMe")

    // Remove Title Bar
    flags: Qt.Window | Qt.FramelessWindowHint

    // Internal Functions
    QtObject{
        id: internal

        function checkLogin(username, password){
            if(username === "m" || password === "1"){
                var component = Qt.createComponent("qrc:/qml/main")
                var win = component.createObject()
                win.username = username
                win.password = password
                win.show()
                visible = false
            }
        }
    }

    Rectangle {
        id: bg
        x: 78
        y: 131
        width: 360
        height: 560
        color: "#151515"
        radius: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        z: 1

        CircularProgressBar {
            id: circularProgressBar
            x: 55
            y: 198
            opacity: 0
            anchors.verticalCenter: parent.verticalCenter
            value: 100
            progressWidth: 8
            strokeBgWidth: 4
            progressColor: "#D35027"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: logoImage
            x: 85
            width: 400
            height: 220
            opacity: 1
            anchors.top: parent.top
            source: "qrc:/images/logo"
            anchors.topMargin: 45
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }


        CustomTextField {
            id: textUsername
            x: 30
            y: 365
            opacity: 1
            anchors.bottom: textPassword.top
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: "Username or email"
        }

        CustomTextField {
            id: textPassword
            x: 30
            y: 418
            opacity: 1
            anchors.bottom: btnLogin.top
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: "Password"
            echoMode: TextInput.Password
        }

        CustomButton {
            id: btnLogin
            x: 30
            y: 469
            width: 300
            height: 40
            opacity: 1
            text: "Sign in"
            anchors.bottom: parent.bottom
            font.pointSize: 10
            font.family: "Segoe UI"
            colorPressed: "#9B2927"
            colorMouseOver: "#D35027"
            colorDefault: "#B93E27"
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: internal.checkLogin(textUsername.text, textPassword.text)
        }

        Label {
            id: label1
            x: 55
            y: 330
            opacity: 1
            color: "#ffffff"
            text: qsTr("Username or email address and password")
            anchors.bottom: textUsername.top
            anchors.bottomMargin: 20
            anchors.horizontalCenterOffset: 0
            font.family: "Segoe UI"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 10
        }

        Label {
            id: label
            x: 100
            y: 294
            opacity: 1
            color: "#ffffff"
            text: qsTr("Sign in to MealMe")
            anchors.bottom: label1.top
            anchors.bottomMargin: 10
            font.family: "Segoe UI"
            font.pointSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomButton {
            id: btnClose
            x: 20
            width: 30
            height: 30
            opacity: 1
            text: "X"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.rightMargin: 15
            font.family: "Segoe UI"
            colorPressed: "#9B2927"
            colorMouseOver: "#D35027"
            colorDefault: "#B93E27"
            font.pointSize: 10
            onClicked: splashScreen.close()
        }

    }

    SplashAnimation{}
}
