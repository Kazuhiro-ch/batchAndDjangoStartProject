@echo off
pip install Django

PAUSE

:INPUT_START
@echo ***************************************
@echo * �v���W�F�N�g������͂��Ă�������
@echo ***************************************

SET PROJ_NAME=
SET /P PROJ_NAME=

:INPUT_CONF
@echo ***************************************
@echo * �v���W�F�N�g����%PROJ_NAME%�ł����ł����H
@echo * (Y / N)
@echo ***************************************

SET CONF_SELECT=
SET /P CONF_SELECT=

IF "%CONF_SELECT%"== SET CONF_SELECT=Y
IF /I NOT "%CONF_SELECT%"=="Y"  GOTO :INPUT_START

django-admin startproject %PROJ_NAME%

cd %PROJ_NAME%

