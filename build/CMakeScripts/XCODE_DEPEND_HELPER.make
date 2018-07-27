# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.drawyuv.Debug:
/Volumes/mac2/work/ragingfire_agnel_tech/openglstudy/drawyuv/build/bin/Debug/drawyuv:\
	/usr/local/opt/qt5/lib/QtWidgets.framework/QtWidgets\
	/usr/local/opt/qt5/lib/QtGui.framework/QtGui\
	/usr/local/opt/qt5/lib/QtCore.framework/QtCore
	/bin/rm -f /Volumes/mac2/work/ragingfire_agnel_tech/openglstudy/drawyuv/build/bin/Debug/drawyuv


PostBuild.drawyuv.Release:
/Volumes/mac2/work/ragingfire_agnel_tech/openglstudy/drawyuv/build/bin/Release/drawyuv:\
	/usr/local/opt/qt5/lib/QtWidgets.framework/QtWidgets\
	/usr/local/opt/qt5/lib/QtGui.framework/QtGui\
	/usr/local/opt/qt5/lib/QtCore.framework/QtCore
	/bin/rm -f /Volumes/mac2/work/ragingfire_agnel_tech/openglstudy/drawyuv/build/bin/Release/drawyuv


PostBuild.drawyuv.MinSizeRel:
/Volumes/mac2/work/ragingfire_agnel_tech/openglstudy/drawyuv/build/bin/MinSizeRel/drawyuv:\
	/usr/local/opt/qt5/lib/QtWidgets.framework/QtWidgets\
	/usr/local/opt/qt5/lib/QtGui.framework/QtGui\
	/usr/local/opt/qt5/lib/QtCore.framework/QtCore
	/bin/rm -f /Volumes/mac2/work/ragingfire_agnel_tech/openglstudy/drawyuv/build/bin/MinSizeRel/drawyuv


PostBuild.drawyuv.RelWithDebInfo:
/Volumes/mac2/work/ragingfire_agnel_tech/openglstudy/drawyuv/build/bin/RelWithDebInfo/drawyuv:\
	/usr/local/opt/qt5/lib/QtWidgets.framework/QtWidgets\
	/usr/local/opt/qt5/lib/QtGui.framework/QtGui\
	/usr/local/opt/qt5/lib/QtCore.framework/QtCore
	/bin/rm -f /Volumes/mac2/work/ragingfire_agnel_tech/openglstudy/drawyuv/build/bin/RelWithDebInfo/drawyuv




# For each target create a dummy ruleso the target does not have to exist
/usr/local/opt/qt5/lib/QtCore.framework/QtCore:
/usr/local/opt/qt5/lib/QtGui.framework/QtGui:
/usr/local/opt/qt5/lib/QtWidgets.framework/QtWidgets:
