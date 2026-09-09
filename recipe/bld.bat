if not exist %PREFIX% mkdir %PREFIX%

if "%TARGET_PLATFORM%" == "win-arm64" (
    set CUDA_ARCH=arm64
) else (
    set CUDA_ARCH=x64
)

if not exist %LIBRARY_LIB%\%CUDA_ARCH% mkdir %LIBRARY_LIB%\%CUDA_ARCH%

if exist lib\%CUDA_ARCH% move lib\%CUDA_ARCH%\* %LIBRARY_LIB%\%CUDA_ARCH%
if exist bin\%CUDA_ARCH% move bin\%CUDA_ARCH%\* %LIBRARY_BIN%
if exist include move include\* %LIBRARY_INC%
