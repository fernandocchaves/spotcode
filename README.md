# Spotecode

PWA desenvolvida na semana Super Full Stack da [OneBitCode](https://onebitcode.com/)

## Dependências utilizadas para desenvolvimento

* Ruby: 2.7
* Ruby On Rails: 6.0.2.2
* Git: last
* NodeJs: 12.16.4
* Yarn: 1.22.4

## Comandos iniciais

    bundle install
    yarn

## Criação do Banco (sqlite)

    rails db:create

## Inicialização do Banco

    rails db:migrate
    rails db:seed

## Dependências externas

1. Baixe este pacote de arquivos contendo as músicas e as imagens utilizadas no app [Clique aqui para o Download](https://drive.google.com/file/d/1MxaS4GkzMXJK7WqmKmfO-XDsbY5I5Nmi/view)
2. Após baixa, coloque dentro da pasta <app_dir>/tmp como nome "seed_files". Ou seja, o caminho da pasta contendo os arquivos ficará <app_dir>/tmp/seeds_files

## Próximos desafios

- [ ] Criar o component artista
- [ ] Exibir artista na busca
- [ ] Exibir artista nos favoritos
- [ ] Criar a página artista
- [ ] Mostrar os detalhes do artista
- [ ] Mostrar todas as músicas do artista
- [ ] Mostrar todos os albums do artista
- [ ] Permitir o favorite em artistas e albuns
- [ ] (**Desafio Hard**) Incluir um player mais robusto: https://github.com/lhz516/react-h5-audio-player#readme