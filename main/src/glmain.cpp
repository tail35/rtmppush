
#include "glmain.h"
#include <QMessageBox>

GlMainWindow::GlMainWindow(QWidget *parent) : QMainWindow(parent)
{
    ui.setupUi(this);
}

GlMainWindow::~GlMainWindow()
{
}

void GlMainWindow::Init()
{
    connect(ui.pushButton, SIGNAL(clicked()), this, SLOT(ClickButton()));
}

void GlMainWindow::ClickButton()
{
    //what you want to do
    QMessageBox::information(this, "My Tittle", "Hello World!");
    //ui.button_exit->setText(tr("(adgkl;kj)"));
}
