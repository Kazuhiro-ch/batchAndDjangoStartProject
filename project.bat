@echo off
pip install Django

PAUSE

:INPUT_START
@echo ***************************************
@echo * プロジェクト名を入力してください
@echo ***************************************

SET PROJ_NAME=
SET /P PROJ_NAME=

:INPUT_CONF
@echo ***************************************
@echo * プロジェクト名は%PROJ_NAME%でいいですか？
@echo * (Y / N)
@echo ***************************************

SET CONF_SELECT=
SET /P CONF_SELECT=

IF "%CONF_SELECT%"== SET CONF_SELECT=Y
IF /I NOT "%CONF_SELECT%"=="Y"  GOTO :INPUT_START

django-admin startproject %PROJ_NAME%

cd %PROJ_NAME%

