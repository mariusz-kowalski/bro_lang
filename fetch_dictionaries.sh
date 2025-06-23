#!/usr/bin/env bash
set -e

dir="$(dirname "$0")/chrome_extension/dictionaries"
mkdir -p "$dir"

download() {
	curl -fsSL "$1" -o "$dir/$2"
}

download https://raw.githubusercontent.com/LibreOffice/dictionaries/master/pl_PL/pl_PL.dic pl_PL.dic
download https://raw.githubusercontent.com/LibreOffice/dictionaries/master/pl_PL/pl_PL.aff pl_PL.aff
download https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.dic en_US.dic
download https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.aff en_US.aff
