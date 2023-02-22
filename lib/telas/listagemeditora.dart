import 'package:flutter/material.dart';

import '../modelos/editora.dart';

class ListagemEditora extends StatefulWidget {
  const ListagemEditora({Key? key}) : super(key: key);

  @override
  State<ListagemEditora> createState() => _ListagemEditoraState();
}

class _ListagemEditoraState extends State<ListagemEditora> {

  List<Editora> editora = [
    Editora.nome("Globo"),
    Editora.nome("Rocco"),
    Editora.nome("Saraiva")

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listagem de editoras"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child:  Center(
          child: SingleChildScrollView(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: editora.length,
                itemBuilder: (_, index){
                  return ListTile(
                    title: Text (editora [index].nome),
                  );
                }
            ),
          ),
        ),
      ),
    );
  }
}

