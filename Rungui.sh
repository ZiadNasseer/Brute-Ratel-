#!/bin/bash

# 检查当前路径下的 xmodlib.bin 文件是否存在
if [ -f "xmodlib.bin" ]; then
    # 如果文件存在，将其复制到前一级目录
    cp xmodlib.bin xmodlibcp.bin
else
    cp xmodlibcp.bin xmodlib.bin
fi

# 打开GUI命令
if [ -x "./commander-runme" ]; then
    ./commander-runme
else
    echo "错误: ./command-run 不存在或不可执行，无法打开GUI"
fi
