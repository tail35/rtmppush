  

#$1 are project name,if you give from sh.
if [[ -n $1 ]]; then  
    mkdir -p $1;  
    cd $1;  
fi  
echo '  
#include <QApplication>
#include <QLabel>
  
int main(int argc, char *argv[]){  
    QApplication app(argc, argv);  
    QLabel *label = new QLabel("Hello Qt!");  
    label->show();  
    return app.exec();  
}  
' >> main.cpp  
qmake -project  
qmake -spec macx-xcode  
#for open project
open `find . -name '*.xcodeproj'|head -n 1` 
