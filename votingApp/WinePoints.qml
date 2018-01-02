import QtQuick 2.0

Item {
    id: container

    property alias maxPoints: variable.maxPts
    property alias descriptor: vardescriptor.desc
    width: 320; height: 160
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
  //      anchors.horizontalCenter: variable.horizontalCenter
    }

}
