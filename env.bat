@echo off

:INPUT_START
@echo ***************************************
@echo * 仮想環境名を入力してください
@echo ***************************************

SET INPUT_STR=
SET /P INPUT_STR=

:INPUT_CONF
@echo ***************************************
@echo * 仮想環境名は%INPUT_STR%でよろしいですか？
@echo * (Y / N)
@echo ***************************************

SET CONF_SELECT=
SET /P CONF_SELECT=

IF "%CONF_SELECT%"== SET CONF_SELECT=Y
IF /I NOT "%CONF_SELECT%"=="Y"  GOTO :INPUT_START


@echo ***************************************
@echo * 仮想環境を形成します。少々お待ちください。
@echo ***************************************

python -m venv %INPUT_STR%\env

cd %INPUT_STR%\env\Scripts\

activate

