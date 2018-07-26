rm -rf mainwindows.h
rm -rf moc_glmain.h
rm -rf moc_glmain.cpp

uic mainwindows.ui -o mainwindows.h

moc glmain.h -o moc_glmain.h
moc glmain.cpp -o moc_glmain.cpp