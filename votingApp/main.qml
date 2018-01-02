import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: page
    //width: 320
    height: 480
    color: "lightgray"
    title: "ViV app"
    property int margin: 11
    width: layout.implicitWidth + 2 * margin
//    height: layout.implicitHeight + 2 * margin
    minimumWidth: layout.Layout.minimumWidth + 2 * margin
    minimumHeight: layout.Layout.minimumHeight + 2 * margin

/*    Column {
        id: colorPicker
        anchors.top: page.top; anchors.topMargin: 4
        spacing: 1

        WinePoints { maxPoints: 4; descriptor: "aroma" }
        WinePoints { maxPoints: 8; descriptor: "flavour" }
        WinePoints { cellColor: "green"; onClicked: helloText.color = cellColor }
 //       WinePoints { cellColor: "blue"; onClicked: helloText.color = cellColor }
 //       WinePoints { cellColor: "yellow"; onClicked: helloText.color = cellColor }

    } */
    ColumnLayout
    {
        id: layout
        spacing: 2
        Layout.minimumWidth: 320
        Layout.maximumWidth: 1000
        anchors.margins: margin
        //WineDescriptor
        WinePoints_layout { maxPoints: 2; descriptor: "color" }
        WinePoints_layout { maxPoints: 6; descriptor: "aroma" }

        WinePoints_layout { maxPoints: 8; descriptor: "flavour" }

    }

}
