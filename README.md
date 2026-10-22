# Hyrule

Consulta de criaturas e itens do universo de Zelda.

## Stack e organização
Flutter/Dart, Dio, Floor e SQLite. `domain/` contém modelos e regras; `data/`, API e banco; `screens/`, interface. A consulta depende da disponibilidade da API externa.

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
