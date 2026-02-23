cmake_minimum_required(VERSION 3.16)
project(Boboter_UI VERSION 0.1 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

set(app_icon_resource_windows "resources/icon.rc")
if (WIN32)
    qt_add_executable(appBoboter_UI
        cpp/main.cpp ${app_icon_resource_windows}
    )
else()
    qt_add_executable(appBoboter_UI
        cpp/main.cpp
    )
endif()

qt_add_qml_module(appBoboter_UI
    URI Boboter_UI

    QML_FILES
        qml/Main.qml

        qml/components/CustomTabButton.qml
        qml/components/CustomSmallTabButton.qml

        qml/pages/DashboardPage.qml

        qml/pages/Controls/ControlsPage.qml
        qml/pages/Controls/LedsControlsSubpage.qml
        qml/pages/Controls/DriveControlsSubpage.qml
        qml/pages/Controls/LinefollowerControlsSubpage.qml

        qml/pages/Sensors/SensorsPage.qml
        qml/pages/Sensors/BatterySensorSubpage.qml
        qml/pages/Sensors/UltrasonicSensorSubpage.qml
        qml/pages/Sensors/EncodersSensorSubpage.qml
        qml/pages/Sensors/BumpersSensorSubpage.qml
        qml/pages/Sensors/ColorsensorSensorSubpage.qml
        qml/pages/Sensors/LinefollowerSensorSubpage.qml
        qml/pages/Sensors/IMUSensorSubpage.qml
        qml/pages/Sensors/IOSensorSubpage.qml

        qml/pages/Settings/SettingsPage.qml

    SOURCES
        cpp/constants.h

    RESOURCES
        resources/images/logo.png
        resources/images/logo.ico
        resources/images/outline.svg
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appBoboter_UI PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appBoboter_UI
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appBoboter_UI
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appBoboter_UI
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
