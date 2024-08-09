@echo off

if "%GITHUB_REF%"=="" (
	for /f %%i in ('git describe --tags --abbrev^=0') do (
		set GITHUB_REF=%%i
	)
)

echo STABLE_GIT_RELEASE_TAG %GITHUB_REF%
