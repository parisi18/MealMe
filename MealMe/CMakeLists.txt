cmake_minimum_required(VERSION 3.16)

project(appMealMe VERSION 0.1 LANGUAGES CXX)

find_package(Qt6 6.2 COMPONENTS Quick Gui REQUIRED)

qt_standard_project_setup(REQUIRES 6.5)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add subdirectory for setup
add_subdirectory(setup)

qt_add_executable(${PROJECT_NAME}
    main.cpp
    qml.qrc
    ${PROJECT_SOURCES}
)

qt_add_qml_module(${PROJECT_NAME}
    URI MealMe
    VERSION 1.0
    QML_FILES
        qml/main.qml
        qml/splashScreen.qml
        qml/components/CircularProgressBar.qml
        qml/components/CustomButton.qml
        qml/components/CustomTextField.qml
        qml/components/SplashAnimation.qml
    RESOURCES
        images/logo.png
        #RESOURCES MealMe/CMakeLists.txt
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE Qt6::Quick setup_library
)

include(GNUInstallDirs)
install(TARGETS appMealMe
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
