export PATH="$HOME/kernel/compiler/clang-proton/bin/:$PATH"

export ARCH=arm64
export KBUILD_BUILD_USER=kasun
make O=out \
        CC=clang \
        vendor/sdmsteppe-perf_defconfig \
        vendor/sweet.config

make -j$(nproc) \
        O=out \
        CC=clang \
        CROSS_COMPILE=aarch64-linux-gnu- \
        CROSS_COMPILE_ARM32=arm-linux-gnueabi-
