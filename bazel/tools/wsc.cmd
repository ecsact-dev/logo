@echo off

for /f %%i in ('git describe --tags --abbrev^=0') do (
	set STABLE_GIT_RELEASE_TAG=%%i
)

