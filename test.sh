#!/usr/bin/env bash
set -euo pipefail

find src -name '*.elm' | xargs elm-format --validate
