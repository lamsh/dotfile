REM \file      relink_mozc.bat
REM \author    SENOO, Ken
REM \copyright CC0
REM \date      first created date: 2016-04-17T12:58+09:00
REM \date      last  updated date: 2016-04-17T14:46+09:00
REM \brief     Windows��Google���{����͂�IME�ݒ���X�V��A���L�f�B���N�g���ɍX�V���ꂽ�ݒ�t�@�C�����R�s�[���ă����N��\�蒼���B
REM �g����
REM ���L�������t�@�C���� FILE �ϐ��ɋ󔒋�؂�ŋL������B
REM Dropbox�Ȃǂŋ��L���Ă���f�B���N�g���ɂ��̃o�b�`�t�@�C����z�u���Ď��s����B
REM ���L�f�B���N�g���Ɠ����ꏊ�ɂ��̃o�b�`�t�@�C����z�u�������Ȃ���΁ASHARE_DIR �ϐ��ɋ��L�f�B���N�g���̏ꏊ���w�肷��B
REM �Ǘ��Ҍ������s�v�ōςނ悤�ɁA�V���{���b�N�ł͂Ȃ��n�[�h�����N���g���Ă���B

SETLOCAL
SET FILE=config1.db user_dictionary.db
SET OS_DIR=%USERPROFILE%\AppData\LocalLow\Google\Google Japanese Input
SET SHARE_DIR=.

FOR %%F IN (%FILE%) DO (
  ROBOCOPY /xo "%OS_DIR%" "%SHARE_DIR%" "%%F"
  DEL "%OS_DIR%\%%F"
  MKLINK /H "%OS_DIR%\%%F" "%SHARE_DIR%\%%F"
)
ENDLOCAL
