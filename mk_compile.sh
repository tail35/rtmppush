
rm -rf build
mkdir build
cd build
cmake ..
make
mkdir xcode
cd xcode
cmake -G "Xcode" ../../
