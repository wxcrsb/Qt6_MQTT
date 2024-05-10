!contains(INCLUDEDFIES, mqtt.pri) {
INCLUDEDFIES += mqtt.pri

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lQt6Mqtt
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lQt6Mqttd

}
