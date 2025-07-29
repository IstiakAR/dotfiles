pragma ComponentBehavior: Bound

import ".."
import qs.widgets
import qs.config
import QtQuick
import QtQuick.Layouts

RowLayout {
    id: root

    required property Session session

    anchors.fill: parent

    spacing: 0

    Item {
        Layout.preferredWidth: Math.floor(parent.width * 0.4)
        Layout.fillHeight: true

        DeviceList {
            anchors.margins: Appearance.padding.large + Appearance.padding.normal
            anchors.leftMargin: Appearance.padding.large
            anchors.rightMargin: Appearance.padding.large + Appearance.padding.normal / 2

            session: root.session
        }

        InnerBorder {
            leftThickness: 0
            rightThickness: Appearance.padding.normal / 2
        }
    }

    Item {
        Layout.fillWidth: true
        Layout.fillHeight: true

        Loader {
            anchors.fill: parent
            anchors.margins: Appearance.padding.large * 2 + Appearance.padding.normal
            anchors.leftMargin: Appearance.padding.large * 2
            anchors.rightMargin: Appearance.padding.large * 2 + Appearance.padding.normal / 2

            asynchronous: true
            sourceComponent: root.session.bt.active ? details : settings
        }

        InnerBorder {
            leftThickness: Appearance.padding.normal / 2
        }

        Component {
            id: settings

            Settings {
                anchors.margins: Appearance.padding.normal
                anchors.leftMargin: Appearance.padding.normal / 2

                session: root.session
            }
        }

        Component {
            id: details

            Details {
                anchors.margins: Appearance.padding.normal
                anchors.leftMargin: Appearance.padding.normal / 2

                session: root.session
            }
        }
    }
}
