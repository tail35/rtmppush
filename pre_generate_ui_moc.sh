#!/bin/bash

root=$(cd `dirname $0`; pwd)
cd $root

rm -rf mainwindows.h
rm -rf moc_glmain.h
rm -rf moc_glmain.cpp

bin=/usr/local/opt/qt5/bin

$bin/uic mainwindows.ui -o mainwindows.h

$bin/moc glmain.h -o moc_glmain.h
$bin/moc glmain.cpp -o moc_glmain.cpp

