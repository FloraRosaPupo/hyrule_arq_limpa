# Hyrule — Compêndio e Favoritos

## Descrição

Aplicativo Flutter para consultar entradas do compêndio de Hyrule por categoria e manter favoritos locais. Reúne acesso à API, modelos, persistência SQLite e telas dentro da funcionalidade de compêndio.

## Stack e bibliotecas

Flutter/Dart, http/Dio, Floor, sqflite e build_runner.

Dependências e versões declaradas: [pubspec.yaml](pubspec.yaml).

## Funcionalidades

- Consulta ao compêndio.
- Categorias e criaturas.
- Favoritos locais.

## Licença

Não há uma licença de distribuição definida para este repositório. Nenhuma licença MIT, Apache ou equivalente é concedida por este README. As atribuições e os direitos dos materiais de terceiros permanecem preservados.

## Validação e limites

Parsing de entradas e localizações. API e SQLite no dispositivo exigem integração.

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

## Organização e manutenção

Compêndio reúne domain/data/presentation em uma feature; a separação existente de API, DAO e regras foi preservada dentro dela. Gerador é compatível com o SDK fixado. Não foram adicionadas camadas redundantes sobre a arquitetura existente.

Veja [a revisão de desenvolvimento](docs/REVISAO.md) para decisões, testes e limites, e [o guia de contribuição](CONTRIBUTING.md) para o fluxo de manutenção.
