#!/usr/bin/env bash

if [[ $1 == "" ]]; then
    echo "You need to provide an URL"
    exit 1
fi

echo | openssl s_client -servername ${1} -showcerts -connect ${1}:443 2>&- | awk '/-----BEGIN/{f="cert."(n++)} f{print>f} /-----END/{f=""}'

certificates=()
for c in cert.*; do
    certificates+=($(openssl x509 -noout -fingerprint <$c))
done
rm cert.*

thumbprint=$(echo ${certificates[${#certificates[@]} - 1]} | sed 's/://g' | awk -F= '{print tolower($2)}')
thumbprint_json="{\"thumbprint\": \"${thumbprint}\"}"

echo $thumbprint_json
