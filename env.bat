@echo off

:INPUT_START
@echo ***************************************
@echo * ���z��������͂��Ă�������
@echo ***************************************

SET INPUT_STR=
SET /P INPUT_STR=

:INPUT_CONF
@echo ***************************************
@echo * ���z������%INPUT_STR%�ł�낵���ł����H
@echo * (Y / N)
@echo ***************************************

SET CONF_SELECT=
SET /P CONF_SELECT=

IF "%CONF_SELECT%"== SET CONF_SELECT=Y
IF /I NOT "%CONF_SELECT%"=="Y"  GOTO :INPUT_START


@echo ***************************************
@echo * ���z�����`�����܂��B���X���҂����������B
@echo ***************************************

python -m venv %INPUT_STR%\env

cd %INPUT_STR%\env\Scripts\

activate

