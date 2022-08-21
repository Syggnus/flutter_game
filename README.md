# 2º Desafio Escribo 

![Licença](https://img.shields.io/github/license/Syggnus/primeiro_desafio_escribo) 
![Issues](https://img.shields.io/github/issues/Syggnus/flutter_game)
![Stars](https://img.shields.io/github/stars/Syggnus/flutter_game)
## 🔗 Objetivo
---
O objetivo deste teste é implementar um jogo de labirinto no flutter.
Replicando a jogabilidade desta versão: https://www.google.com/logos/2010/pacman10-i.html

Desenvolvido em Flutter utilizando o pacote Bonfire (https://pub.dev/packages/bonfire), onde o mapa deverá ser criado utilizando o Tiled (https://www.mapeditor.org/).


## 🔗 Status do Projeto
---
[![Generic badge](https://img.shields.io/badge/Status-OnGoing-<COLOR>.svg)](https://shields.io/)

## 🔗 Tabela de conteúdos
---

<!--ts-->
   * [Objetivo](#objetivo)
   * [Status do Projeto](#status-do-Projeto)
   * [Tabela de Conteúdos](#tabela-de-conteúdos)
   * [Instalação](#instalacao)
      * [Pré Requisitos](#pré-requisitos)
      * [Rodando no VSCode](#rodando-no-Terminal-do-VSCode)
   * [Teste](#teste)
   * [Tecnologias](#tecnologias)
   * [Autor](#autor)
   * [Licença](#licença)
<!--te-->

## 🔗 Instalação
---
### 🔗 Pré-requisitos
Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:

- [Git](https://git-scm.com) 

- [Dart](https://dart.dev/get-dart)

- [Flutter](https://docs.flutter.dev/get-started/install)

- [VSCode](https://code.visualstudio.com/)

### 🔗 Rodando no VSCode
#### Com o VSCode devidamente baixado e instalado na máquina, realize os seguintes passos para a execução do programa:

- Clone este repositório
   ~~~bash
   git clone https://github.com/Syggnus/flutter_game.git
   ~~~

- Acesse a pasta raiz do projeto no VSCode:
   ~~~bash
   /flutter_game
   ~~~
   
- Instale no VSCode a Extensão do Flutter

- Abra o Terminal do VsCode e instale as dependências
   ~~~bash
   flutter pub get
   ~~~
- Vá para a pasta bin
   ~~~bash
   cd lib
   ~~~
- Execute a aplicação
   ~~~bash
   dart main.dart
   ~~~

- Escolha a Opção de Desktop

   
## 🔗 Teste
---

Você pode andar com as teclas:

      AWSD e as Setas do Teclado.

Pode atacar os inimigos usando:

      Space

Cogumelos Normais Adicionam 100 pontos ao Score

Cogumelos Vermelhos aumentam o dano para 100 (Hit Kill) e Add 100 pontos ao Score

RoadMap:
   - [ok] Mapa:
        - [ok] Blocos:
        - [ok] Decoração:
        - [ok] Comidas:
   - [ok] Herói:
        - [ok] Animação:
            - [ok] Movimentação
            - [ok] Ataque
            - [ok] Morte
   - [ok] Inimigos:
        - [ok] Animação
        - [ok] Movimentação
        - [ok] Ataque
        - [ok] Barra de Vida
        - [ok] Morte
   - [ok] Iluminação:
        - [ok] Mapa
        - [ok] Visão do Jogador
        - [ok] Objetos
   - [ok] Interface de Jogador
        - [ok] Avatar
        - [ok] Barra de Vida
        - [ok] Pontuação
   - [ok] Itens Para Aumentar o Dano Contra Inimigos

Bugs: 
   - Pode atacar enquanto anda.
   - Inimigo morrer e ainda andar até o player.
   - Inimigo morrer e caso leve mais um dano continuar andando.
   
## 🔗 Tecnologia Usada
---
As seguintes ferramentas foram usadas na construção do projeto:

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)


## 🔗 Autor 
---
Chuan Igor Ferreira Feitosa

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/chuan-igor-3263ab232/)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/chuan.igor/)


## 🔗 Licença
---
![Licença](https://img.shields.io/github/license/Syggnus/primeiro_desafio_escribo) 
