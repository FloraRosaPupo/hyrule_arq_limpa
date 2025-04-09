import 'package:flutter/material.dart';
import 'package:hyrule/controllers/dao_controller.dart';
import 'package:hyrule/domain/models/entry.dart';
import 'package:hyrule/screens/creatures_details.dart';
import 'package:hyrule/screens/items.dart';

class CardCreature extends StatefulWidget {
  final Entry entry;
  final bool paginaItem;
  final DaoController daoController = DaoController();
  final VoidCallback? onRefresh; // Callback para notificar a atualização

  CardCreature(
      {super.key,
      required this.entry,
      required this.paginaItem,
      this.onRefresh});

  @override
  _CardCreatureState createState() => _CardCreatureState();
}

class _CardCreatureState extends State<CardCreature> {
  late bool isDelete = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.9,
      child: InkWell(
        onTap: () {
          if (widget.paginaItem) {
            setState(() {
              isDelete = true;
              // Alterna o valor de isDelete ao clicar
            });
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreaturesDetails(
                          entry: widget.entry,
                        )));
          }
        },
        child: Container(
          alignment: Alignment.center,
          width: 330,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 37, 37, 37),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.network(
                            widget.entry.image,
                            fit: BoxFit.fitHeight,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.error,
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.entry.name.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Philosopher',
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                widget.entry.description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3B4858),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Wrap(
                        spacing: 4,
                        runSpacing: 2,
                        children: widget.entry
                            .commonLocationsConvert()
                            .map((e) => Chip(label: Text(e)))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: isDelete,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.red,
                    ),
                    width: 160,
                    height: 300,
                    child: Center(
                        child: IconButton(
                      onPressed: () {
                        widget.daoController.deleteEntry(entry: widget.entry);
                        setState(() {
                          isDelete = !isDelete;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Item salvo com sucesso!'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                        // Atualiza a lista de itens salvos
                        if (widget.onRefresh != null) {
                          widget.onRefresh!();
                        }
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
