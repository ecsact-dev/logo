@echo off

for /f %%i in ('git describe --tags --abbrev^=0') do (
	echo STABLE_GIT_RELEASE_TAG %%i
)

