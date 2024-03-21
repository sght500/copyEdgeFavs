@ECHO OFF
REM Name:			copyEdgeFavs.bat
REM	Author:			Mario Montoya, BSA Supply Chain, Amway de Mexico.
REM Description:	This script copies the "Bookmarks" JSON file from Microsoft Edge
REM					User Data Default directory. The JSON file contains the URLs you
REM					may need when having a new PC and you didn't have the oportunity to
REM					manually export your Favorites from Microsoft Edge.
REM Date:			V0.1:		Mar 20th, 2024
REM ---------------------------------
REM		VERSION HISTORY
REM ---------------------------------
REM V0.1	Copies the JSON Bookmarks file to destination folder with .json extension.
SETLOCAL
REM You can set EdgeFolder equals to "Edge", "Edge Beta", "Edge Dev" according to your needs.
SET EdgeFolder=Edge
REM Set your destination folder.
SET DestinationFolder=O:\s\202x\blank
COPY /Y "%LOCALAPPDATA%\Microsoft\%EdgeFolder%\User Data\Default\Bookmarks" "%DestinationFolder%\Bookmarks.json"
ENDLOCAL