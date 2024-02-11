import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class ListController {
  void openDetail(
      BuildContext context, PlutoGridOnRowDoubleTapEvent event) async {
    await showDialog(
        context: context,
        builder: (BuildContext ctx) {
          final textController = TextEditingController();
          return Dialog(
            alignment: Alignment.topCenter,
            child: LayoutBuilder(
              builder: (ctx, size) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  height: 300,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Введите текст коментария'),
                        SizedBox(
                          height: 190,
                          child: TextField(
                            maxLines: null,
                            controller: textController,
                            autofocus: true,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Wrap(
                            spacing: 10,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(ctx, null);
                                },
                                child: const Text('Отмена'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  event.cell.value = textController.text;
                                  Navigator.pop(ctx, textController.text);
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.blue,
                                  ),
                                ),
                                child: const Text(
                                  'Ввод',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });
  }
}
