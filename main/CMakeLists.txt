project(drawyuv)

set(srcs src/main.cpp
		 src/glmain.cpp
	)
#set(incs include/base.h)

include_directories("include")



message(STATUS "wo:"${PROJECT_SOURCE_DIR})

QT5_WRAP_cpp(HMAIN src/glmain.h)
QT5_WRAP_UI(UIMAIN ui/mainwindows.ui)

add_executable(drawyuv ${srcs} ${HMAIN} ${UIMAIN} )

target_link_libraries (drawyuv Qt5::Widgets Qt5::Core Qt5::Gui stdc++ 
    "-framework Cocoa"
    "-framework AppKit"
    "-framework CoreData"
    "-framework Foundation"
	objc)

