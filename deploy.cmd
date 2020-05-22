@rem ***********************************************************************
@rem ** 
@rem ** WWIV Documentation deployment Script
@rem ** 
@rem Installed Software:
@rem   zip [%PATH%]

setlocal
del site.zip


set ZIP_EXE=zip
set WWIV_ROOT=latest
set WWW_DIR=/www/docs-staging.wwivbbs.org/public_html
set WWW_USER=www-data

mkdocs build --clean
pushd site
%ZIP_EXE% -9qqr ../site.zip * || exit /b
popd

rem clenaup previous version of the site.
ssh jenkins "sudo -u %WWW_USER% rm -r %WWW_DIR%/*"
scp site.zip jenkins:%WWW_DIR%/site.zip 
ssh jenkins "cd %WWW_DIR%/ && unzip -o site.zip && rm site.zip && sudo chown -R %WWW_USER%:%WWW_USER% * && find ."  || exit /b
