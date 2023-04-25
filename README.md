# Démo `Same Origin Policy` et `CORS`

>Cette démo est complètement et *ouvertement* inspirée de [l'excellente présentation de la SOP par Kirk Jackson (2017)](https://www.youtube.com/watch?v=zul8TtVS-64&list=PLS3XEhTy6-Ale8Et6pxRR2I3LYNt8-rX3&index=19&t=2632s), que je vous invite à regarder.

- [Démo `Same Origin Policy` et `CORS`](#démo-same-origin-policy-et-cors)
  - [Pré-requis](#pré-requis)
  - [Lancer la démo](#lancer-la-démo)
  - [Stopper la démo](#stopper-la-démo)
  - [Références](#références)


La [*Same Origin Policy* (SOP)](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy) est un ensemble de règles plus ou moins bien défini lorsque Javascript a été introduit en 1995 dans les navigateurs web. Nous allons voir ce qu'est une origine, comment la SOP fonctionne et pourquoi elle est fondamentale du point de vue de la sécurité côté client, et protège contre de nombreuses attaques sur le web.

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

## Références

- [MDN: Same Origin Policy (SOP)](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy), les contraintes *cross-origin* implémentées côté *client*
- [MDN: Cross Origin Resource Sharing (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS), les contraintes *cross-origin* implémentées côté *serveur*
- [Same-origin policy: The core of web security @ OWASP Wellington](https://www.youtube.com/watch?v=zul8TtVS-64&list=PLS3XEhTy6-Ale8Et6pxRR2I3LYNt8-rX3&index=19&t=2632s), excellente présentation de Kirk Jackson de la Same Origin Policy avec démonstrations à l'appui. **À regarder**.