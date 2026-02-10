cmake_minimum_required(VERSION 3.16)

project(Boboter_UI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appBoboter_UI
    main.cpp
)

qt_add_qml_module(appBoboter_UI
    URI Boboter_UI

    QML_FILES
        Main.qml
        CustomTabButton.qml


    SOURCES
        constants.h

    RESOURCES
        images/logo.png
        QML_FILES StatusPage.qml
        QML_FILES ControlsPage.qml
        QML_FILES SensorsPage.qml
        QML_FILES SettingsPage.qml
)

set_source_files_properties(colors.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

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
