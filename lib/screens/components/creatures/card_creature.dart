import 'package:flutter/material.dart';
import 'package:hyrule/domain/models/entry.dart';

class CardCreature extends StatelessWidget {
  final Entry entry;
  final bool isDelete;

  const CardCreature({
    super.key,
    required this.entry,
    this.isDelete = true, // Inicializa com um valor padrão
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // A lógica de mudança de estado deve ser gerenciada fora deste widget
      },
      child: Stack(
        children: [
          Container(
            width: 330,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 37, 37, 37),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          entry.image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.error); // Exibe um ícone de erro se a imagem falhar
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              entry.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'Philosopher',
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'Descrição: ${entry.description}',
                              style: const TextStyle(
                                fontSize: 16,
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
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3B4858),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Wrap(
                      children: entry
                          .commonLocationsConvert()
                          .map((e) => Chip(label: Text(e)))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: !isDelete,
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
                child: const Center(
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
