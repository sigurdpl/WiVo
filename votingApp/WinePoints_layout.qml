import QtQuick 2.8
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    id: container

    property alias maxPoints: variable.maxPts
    property alias descriptor: vardescriptor.desc
    Layout.preferredWidth: 320
    Layout.preferredHeight:  160
    Layout.fillWidth: true
    Layout.fillHeight: true
    Rectangle {

        id: pointsContainer
        border.color: "black"
        anchors.fill: parent


    }

    Text {
        id: vardescriptor
        property string desc: ""
        text: desc
        x: 5
        anchors.bottom: variable.top
    }

    Text {
        id: variable
        property int maxPts: 0
        text: "(0-" + String(maxPoints) +")"
        x: 5
        anchors.verticalCenter: pointsContainer.verticalCenter
        //x: container.width/2
    }
    TextInput {
        text: String(0);
        font.capitalization: Font.AllLowercase

        anchors.right: container.right
        anchors.rightMargin: 10
        anchors.top: variable.top
      //  anchors.fill: parent
  //      anchors.horizontalCenter: variable.horizontalCenter
    }
    TextArea {
        id: myDescription
        text: "This fills the whole cell"
        anchors.left: variable.right
        //Layout.minimumHeight: 30
        Layout.fillHeight: true
        Layout.fillWidth: true
    }

}
