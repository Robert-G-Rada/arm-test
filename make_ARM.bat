arm-agb-elf-gcc.exe -o test.elf test.s -lm
arm-agb-elf-objcopy.exe -O binary test.elf test.gba
del test.elf
pause
exit

