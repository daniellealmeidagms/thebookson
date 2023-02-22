import 'package:flutter/material.dart';

import '../modelos/livros.dart';

class ListagemUsuarios extends StatefulWidget {
  const ListagemUsuarios({Key? key}) : super(key: key);

  @override
  State<ListagemUsuarios> createState() => _ListagemUsuariosState();
}

class _ListagemUsuariosState extends State<ListagemUsuarios> {
  List<Livro> listaLivros = [
    Livro.titulo("Jaison"),
    Livro.titulo("Jaeder"),
    Livro.titulo("Jubileu"),
  ];

  @override




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(
         "Listagem de Usuarios"
       ),
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: SingleChildScrollView(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: listaLivros.length,
                  itemBuilder: (_, index){
                return ListTile(
                  title: Text(listaLivros[index].titulo),
                );
              }),
            ),

          ),
        ),
      ),
    );


  }
}
