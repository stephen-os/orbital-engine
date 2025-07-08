@echo off

pushd ..
lumina\dependencies\premake\premake5.exe --file=orbital-engine.lua vs2022
popd
pause