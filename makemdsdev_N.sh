#!/bin/sh

# Contador
BUILD_START=$(date +"%s")


# Carga de TC Linaro 4.9
export CROSS_COMPILE=/home/jdesing/Compiladores/aarch64-linux-android-4.9/bin/aarch64-linux-android-
# Exporta Arquitectura
export ARCH=arm64
make aio_otfp_n_defconfig

# Compilación
make -j9
BUILD_END=$(date +"%s")
DIFF=$(($BUILD_END - $BUILD_START))
echo -e "$Yellow Compilación completa en $(($DIFF / 60)) minuto(s) y $(($DIFF % 60)) segundos.$nocol"
