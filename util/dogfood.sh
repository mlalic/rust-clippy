#!/bin/sh
rm -rf target*/*so
cargo build --lib && cp -R target target_recur && cargo rustc -- -Zextra-plugins=clippy -Ltarget_recur/debug   -Dclippy || exit 1
rm -rf target_recur

