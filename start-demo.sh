#!/bin/bash

# Script pour démarrer les deux serveurs locaux pour la démo Same Origin Policy

# Se placer à la racine de demo-sop

pushd site-a
php -S localhost:5001 &
popd
pushd site-b
php -S localhost:5002 &
popd