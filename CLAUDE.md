# Hyrule (compêndio e favoritos)

Consulta entradas do compêndio por categoria (API pública do compêndio de Hyrule) e salva favoritos em SQLite. Estudo de **arquitetura limpa**.

## Arquitetura
```
presentation/ (categorys, creatures, creatures_details, items, components/)
   └── controllers/ api_controller.dart, dao_controller.dart
          └── domain/business/ api_workflow.dart, dao_workflow.dart   ← contratos (abstrações)
                 ├── data/api/data_api.dart        (Dio/http → API do compêndio)
                 └── data/dao/ database.dart + entry_dao.dart   (Floor sobre sqflite)
domain/models/entry.dart (entidade Floor), domain/constants/ (api, categorias)
```
- `database.g.dart` é **gerado** pelo `floor_generator`.
- Testes: `test/entry_test.dart`.

## Comandos (PowerShell)
```powershell
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # depois de mudar entity/DAO/database
flutter analyze; flutter test
flutter run
```

## CI e deploy
- `ci.yml` roda pub get, analyze e test.
- Não há deploy.

## Regras
- Os controllers dependem dos **workflows** (abstrações), não de `data/` direto.
- Mudou `Entry`, DAO ou versão do database: rode o build_runner e crie uma **migration** do Floor (não apague o banco do usuário).
- `entry.dart` tem anotações do Floor no domínio, uma concessão conhecida. Não piore o acoplamento.
