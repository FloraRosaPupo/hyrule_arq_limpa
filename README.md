# Hyrule

Consulta de criaturas e itens do universo de Zelda.

## Stack e organização
Flutter/Dart, http/Dio, Floor, sqflite e build_runner.

Compêndio reúne domain/data/presentation em uma feature; a separação existente de API, DAO e regras foi preservada dentro dela. Gerador é compatível com o SDK fixado. Não foram adicionadas camadas redundantes sobre a arquitetura existente.

## Executar
Use a versão de Flutter registrada em `.github/workflows/ci.yml`.
```sh
git clone https://github.com/FloraRosaPupo/hyrule_arq_limpa.git
cd hyrule_arq_limpa
flutter pub get
flutter run
```

## Verificações
```sh
flutter analyze --no-fatal-infos --no-fatal-warnings
flutter test
```
A CI verifica erros de análise e os testes. Avisos e sugestões continuam visíveis no relatório do analisador. Testes locais não substituem a validação no dispositivo e dos serviços externos.

## Contribuir
Abra uma branch por alteração, descreva o comportamento esperado e inclua testes para regras ou regressões. Mantenha credenciais e arquivos gerados fora do Git.

## Licença
Não há licença de distribuição definida neste repositório.


## Funcionalidades

- Consulta ao compêndio.
- categorias e criaturas.
- favoritos locais.


## Organização e manutenção

Compêndio reúne domain/data/presentation em uma feature; a separação existente de API, DAO e regras foi preservada dentro dela. Gerador é compatível com o SDK fixado. Não foram adicionadas camadas redundantes sobre a arquitetura existente.

Veja [a revisão de desenvolvimento](docs/REVISAO.md) para decisões, testes e limites, e [o guia de contribuição](CONTRIBUTING.md) para o fluxo de manutenção.
