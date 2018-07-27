
#pragma once
#include <QMainWindow>
#include "ui_mainwindows.h"

class GlMainWindow : public QMainWindow
{
    Q_OBJECT
public:
    GlMainWindow(QWidget *parent = Q_NULLPTR);
    virtual ~GlMainWindow();
    void Init();
public slots:
//    void my(){};
private:
    Ui::MainWindow ui;
};
