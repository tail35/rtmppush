
#include <QApplication>
#include <QLabel>
#include "glmain.h"
  
int main(int argc, char *argv[]){  

    QApplication app(argc, argv);  
    //QLabel *label = new QLabel("Hello Qt!");
    //label->show();
    GlMainWindow* mn = new GlMainWindow(0);
    mn->Init();
    mn->show();
    //GlMainWindow m;
    //m.show();
    NSString *str1=@"今天的猪肉真贵,200块一斤";
    
    return app.exec();  
}  

