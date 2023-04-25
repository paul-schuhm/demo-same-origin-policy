# Démo `Same Origin Policy` et `CORS`

## Pré-requis

- php
- bash

## Lancer la démo

Lancer les deux sites `site-a` et `site-b` avec le serveur *built-in* de PHP

~~~
pushd site-a
php -S localhost:5001 &
popd
pushd site-b
php -S localhost:5002 &
popd
~~~

**ou** éxecuter le script

~~~
./start-demo.sh
~~~

> Pour lister les serveurs qui écoutent sur le port 1234 `fuser 1234/tcp`. Pour tuer les processus, `fuser -k 1234/tcp`

>Noter les `PID` des processus pour arrêter les serveurs et libérer les ports correspondants avec la commande `kill PID`

## Stopper la démo

~~~
fuser -k 5001/tcp 5002/tcp
~~~

**ou** éxecuter directement le script

~~~
./stop-demo.sh
~~~