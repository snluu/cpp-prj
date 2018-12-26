conan remote add -f bincrafters "https://api.bintray.com/conan/bincrafters/public-conan"

mkdir build\vs-debug
pushd build\vs-debug
conan install ..\.. -s build_type=Debug
cmake ..\.. -G "Visual Studio 15 Win64"
popd