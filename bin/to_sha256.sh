#!/bin/bash
#-----------------------------------------------------------------
# 生成任意字符串的 SHA256
# 用于设置文章密码
#-----------------------------------------------------------------
# 命令执行示例：
#   bin/to_sha256.sh "123456"
#-----------------------------------------------------------------

ANY_STRING=$1
echo -n "${ANY_STRING}" | openssl sha256 | tr '[:upper:]' '[:lower:]'
