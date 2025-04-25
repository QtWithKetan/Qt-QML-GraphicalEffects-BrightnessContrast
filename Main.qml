import QtQuick
import Qt5Compat.GraphicalEffects

Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item
    {
        anchors.centerIn: parent
        width: parent.width
        height: parent.height

        Image
        {
            id: sourceImage
            source: "https://images3.alphacoders.com/589/589870.jpg"
            sourceSize: Qt.size(parent.width, parent.height)
            smooth: true
            visible: false
        }

        BrightnessContrast
        {
            anchors.fill: sourceImage
            source: sourceImage
            brightness: 0.5 // -1 to 1
            contrast: 0.9 // -1 to 1
            cached: true
        }
    }
}
