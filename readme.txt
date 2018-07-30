1.如果有界面改动,这样是为了编译界面
./mk_compile.sh
2.cd build,打开xcode 
工程选择目标工程
编辑或者编译代码。

-------------
note:
./mk_compile.sh 将在build 目录下编译出debug qt 兼容 object c程序。
./mk_xcode.sh 将在build 目录下生成一个xcode工程。

本工程演示了一个从cmakelist 到xcode 生成的demo.下面是一些注意事项。

支持objec c 需要这样
add_compile_options(-x objective-c++)

moc_xx.cpp 的产生,只需要wrap .h文件，不需要生成moc_xx.h:
QT5_WRAP_cpp(HMAIN src/glmain.h)

ui_xx.h 文件生成:
QT5_WRAP_UI(UIMAIN ui/mainwindows.ui)

generate exe:
add_executable(drawyuv ${srcs} ${HMAIN} ${UIMAIN} )

不需要:
moc_predefs.h

链接 libstdc++ ,Foundation,Cocoa 库
target_link_libraries (drawyuv Qt5::Widgets Qt5::Core Qt5::Gui stdc++ "-framework Foundation" "-framework Cocoa" objc)