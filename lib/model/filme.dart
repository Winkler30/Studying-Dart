class Filme {
  int id;
  String titulo;
  String resumo;
  String atores;
  String capa;
  int duracao;

  Filme({
    this.id = 0,
    this.titulo = '',
    this.resumo = '',
    this.atores = '',
    this.capa = '',
    this.duracao = 0,
  });

  factory Filme.fromJson(Map<String, dynamic> json) {
    return Filme(
      id: json['id'] ?? 0,
      titulo: json['titulo'] ?? '',
      resumo: json['resumo'] ?? '',
      atores: json['atores'] ?? '',
      capa: json['capa'] ?? '',
      duracao: json['duracao'] ?? 0,
    );
  }

  // Este método permite converter um objeto Filme em um mapa (json).
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titulo': titulo,
      'resumo': resumo,
      'atores': atores,
      'capa': capa,
      'duracao': duracao,
    };
  }
}
