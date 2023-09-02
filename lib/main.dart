import 'package:flutter/material.dart';
import 'package:trabalho_consulta_api/http/filme_api.dart';
import 'package:trabalho_consulta_api/model/filme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Removendo o banner de depuração
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FilmesList(),
    );
  }
}

class FilmesList extends StatefulWidget {
  const FilmesList({Key? key}) : super(key: key);

  @override
  State<FilmesList> createState() => _FilmesListState();
}

class _FilmesListState extends State<FilmesList> {
  List<Filme> filmesList = [];

  // Método para obter os filmes a partir da API.
  getFilmes() async {
    FilmeApi api = FilmeApi();
    final filmes = await api.getFilmesOffline();
    setState(() {
      filmesList = filmes;
    });
  }

  @override
  void initState() {
    super.initState();
    getFilmes(); // Chamando o método getFilmes() para buscar os filmes.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 229, 9, 20),
        title: const Text(
          'Uniflix',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.black, // Definindo o fundo preto.
        child: ListView(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: filmesList.length, // Número de itens na grade.
              shrinkWrap: true, // Evitar o erro de overflow
              physics: NeverScrollableScrollPhysics(), // Desabilitar o scroll
              itemBuilder: (context, index) {
                Filme filme =
                    filmesList[index]; // Pegando o filme atual da lista.
                return Card(
                  color: Colors.white, // Cor de fundo do Card
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Image.network(
                        filme.capa, // Mostrando a capa do filme.
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        filme.titulo,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ), // Mostrando o título do filme.
                      ListTile(
                        leading: Text(
                          'ID: ${filme.id}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // Mostrando o ID do filme.
                        subtitle: Text(
                          filme.resumo,
                          style: const TextStyle(fontSize: 14),
                        ), // Mostrando o resumo do filme.
                        trailing: Text(
                          'Duração: ${filme.duracao} min',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ), // Mostrando a duração do filme.
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
