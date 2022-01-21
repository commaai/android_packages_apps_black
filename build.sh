#!/bin/bash
set -e

cd $(dirname $0)

./gradlew assembleRelease

java -jar signapk/signapk.jar signapk/certificate.pem signapk/key.pk8 app/build/outputs/apk/release/app-release-unsigned.apk ai.comma.plus.black.apk
