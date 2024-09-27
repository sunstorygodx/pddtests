cmake_minimum_required(VERSION 3.14)

project(pdd_tests VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt6 REQUIRED COMPONENTS Core Qml Quick QuickControls2 LinguistTools Svg)

#qt_create_translation(QM_FILES ${CMAKE_SOURCE_DIR} tr_uz_UZ@cyrillic.ts)
#configure_file(${QM_FILES} ${CMAKE_SOURCE_DIR} COPYONLY)

qt_standard_project_setup()

qt_add_executable(pdd_tests
    main.cpp
    src.qrc
    ${QM_FILES}
)

file(GLOB_RECURSE QML_SOURCES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*.qml)

qt_add_qml_module(pdd_tests
    URI pdd_tests
    VERSION 1.0
    NO_RESOURCE_TARGET_PATH
    IMPORTS
        QtQml
        QtQuick
        QtAndroidTools
    IMPORT_PATH
        ${CMAKE_CURRENT_BINARY_DIR}
    QML_FILES
        ${QML_SOURCES}        
        SOURCES translator.h translator.cpp
        SOURCES manager.h manager.cpp
        SOURCES
        SOURCES filereader.h filereader.cpp
)

target_compile_definitions(pdd_tests PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(pdd_tests PRIVATE
    Qt6::Core
    Qt6::Qml
    Qt6::Quick
    Qt6::QuickControls2
    Qt6::Svg
)

if(ANDROID)
    set_property(TARGET pdd_tests APPEND PROPERTY QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android)
    add_custom_target(Android SOURCES
        android/AndroidManifest.xml
        android/build.gradle
        android/gradle.properties
    )

    set(QTAT_APP_PERMISSIONS ON)
    set(QTAT_APK_INFO ON)
    set(QTAT_SCREEN ON)
    set(QTAT_SYSTEM ON)
    set(QTAT_BATTERY_STATE ON)
    set(QTAT_SIGNAL_STRENGTH ON)
    set(QTAT_IMAGES ON)
    set(QTAT_NOTIFICATION ON)
    set(QTAT_ADMOB_BANNER ON)
    set(QTAT_ADMOB_INTERSTITIAL ON)
    set(QTAT_ADMOB_REWARDED_AD ON)
    set(QTAT_PLAY_STORE ON)
    set(QTAT_GOOGLE_ACCOUNT ON)
    set(QTAT_GOOGLE_DRIVE ON)
    set(QTAT_SHARING ON)
    set(QTAT_USER_MESSAGING_PLATFORM ON)
    set(QTAT_AUDIO ON)
    set(QT_ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../pdd_tests/QtAndroidTools)
    add_subdirectory(MobileUI/)
    target_link_libraries(pdd_tests PRIVATE QtAndroidToolsplugin MobileUI::MobileUI)
endif()
