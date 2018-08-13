#!/bin/sh

source 'log.sh'
source 'test.sh'

techo 'logs info correctly'
msg='Test info message'
expected="$_LOG_INFO $msg"
tassert_eq "$expected" "$(logi "$msg")"

techo 'logs warning correctly'
msg='Test warning message'
expected="$_LOG_WARNING $msg"
tassert_eq "$expected" "$(logw "$msg")"

techo 'logs error correctly'
msg='Test error message'
expected="$_LOG_ERROR $msg"
tassert_eq "$expected" "$(loge "$msg")"

treport
