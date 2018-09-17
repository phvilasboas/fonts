#!/bin/sh

set -e

if ! [[ -x $(which git) ]]; then
 apt install git
fi

cd /tmp
git clone https://github.com/phvilasboas/fonts.git

echo "Copiando Fontes Para /usr/share/fontes/TTF/..."
mkdir -p /usr/share/fontes/TTF/
cp /tmp/fonts/fontes/* /usr/share/fontes/TTF/ -rf

echo "Atualizando caches"
fc-cache -vf
mkfontscale
mkfontdir

echo "done."
