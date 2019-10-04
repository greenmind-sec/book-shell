#!/bin/bash
# Exclui CDs (versao 1)
#
grep -v "$1" musicas > /tmp/mus$$
mv -f /tmp/mus$$ musicas
