cmake_minimum_required(VERSION 3.16)

project(interneducation VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# Find Qt packages
find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)

# Set up the application
qt6_add_executable(interneducation
    main.cpp
)

# Link Qt libraries
target_link_libraries(interneducation PRIVATE Qt6::Quick Qt6::QuickControls2)

# Add QML modules
qt6_add_qml_module(interneducation
    URI interneducation
    VERSION 1.0
    QML_FILES
        main.qml
        components/WelcomePage.qml
        components/LoginPage.qml
        components/SignupPage.qml
        components/CatalogPage.qml
        components/CourseContentPage.qml
        components/LessonPage.qml
        components/QuizPage.qml
        components/ScorePage.qml
        components/ProfilePage.qml
        components/CourseDelegate.qml
        dialogs/VideoDialog.qml
        dialogs/CertificateDialog.qml
        dialogs/CourseDetailsDialog.qml
        dialogs/DownloadDialog.qml
        dialogs/SyncDialog.qml
    RESOURCES
        assets/qml.qrc
)

# Add JavaScript files as resources
set(JS_FILES
    utils/OdooAPI.js
    utils/CertificateManager.js
    utils/SettingsManager.js
)

# Add JavaScript files to the resource system
qt6_add_resources(interneducation "js_files"
    PREFIX "/js"
    FILES ${JS_FILES}
)

# Include directories
target_include_directories(interneducation PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/components
    ${CMAKE_CURRENT_SOURCE_DIR}/dialogs
    ${CMAKE_CURRENT_SOURCE_DIR}/utils
)

# Installation
install(TARGETS interneducation
    BUNDLE DESTINATION .
    RUNTIME DESTINATION bin
)

# Copy assets to build directory (for development)
file(COPY assets/images DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
