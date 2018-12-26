conan remote add -f bincrafters "https://api.bintray.com/conan/bincrafters/public-conan"

mkdir build\release
pushd build\release
conan install ..\.. -s build_type=Release
cmake ..\.. -G "Visual Studio 15 Win64"
cmake --build . --config Release
popd