@setlocal
@set mode=%1
@set config=%2
@set filedest=%3
@endlocal
@for /f "usebackq delims==" %%a in ('set') do @(
	if %%a==myVSbaton goto next
)
@call "C:\Program Files\Microsoft Visual Studio 10.0\VC\bin\vcvars32.bat"
@set myVSbaton=tr
:next
@setlocal
@call msbuild.exe helloworld.sln /t:%mode% /p:Configuration=%config% >temp.txt
@call makecab temp.txt %filedest%
@del temp.txt
@endlocal
