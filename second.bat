@for /f "token=2,3" %%a in (vercontrol.h) do @(
	if /i vsubminor==%%a @echo %%b
)
