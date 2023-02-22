import 'package:flutter/material.dart';

import '../modelos/livros.dart';

class ListagemLivros extends StatefulWidget {
  const ListagemLivros({Key? key}) : super(key: key);

  @override
  State<ListagemLivros> createState() => _ListagemLivrosState();
}

class _ListagemLivrosState extends State<ListagemLivros> {

  List<Livro> listalivros = [
    Livro.titulo("It - A coisa"),
    Livro.titulo("Drácula"),
    Livro.titulo("Frankenstein"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listagem de Livros"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: listalivros.length,
                itemBuilder: (_, index) {
                    return ListTile(
                      title: Text(listalivros[index].titulo),

                );
              }
            ),
          ),
        ),
      ),
    );
  }
}

