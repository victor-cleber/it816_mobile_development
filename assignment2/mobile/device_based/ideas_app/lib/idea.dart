import 'dart:io';

class Idea {
  int id;
  String titulo;
  String descricao;
  String criadoEm;
  String excluidoEm;
  String linkYoutube;
  String materialComplementar;
  String caminhoImagem;
  String realizador;
  String tema;

  Idea(
      int id,
      String itulo,
      String descricao,
      String criadoEm,
      String excluidoEm,
      String linkYoutube,
      String materialComplementar,
      String caminhoImagem,
      String realizador,
      String tema) {
    this.id = id;
    this.titulo = itulo;
    this.descricao = descricao;
    this.criadoEm = criadoEm;
    this.excluidoEm = excluidoEm;
    this.linkYoutube = linkYoutube;
    this.materialComplementar = materialComplementar;
    this.caminhoImagem = caminhoImagem;
    this.realizador = realizador;
    this.tema = tema;
  }

  Idea.fromJson(Map json)
      : id = json['id'],
        titulo = json['titulo'],
        descricao = json['descricao'],
        caminhoImagem = json['caminho_imagem'],
        criadoEm = json['criado_em'],
        excluidoEm = json['excluido_em'],
        linkYoutube = json['linkYoutube'],
        materialComplementar = json['materialComplementar'],
        realizador = json['realizador'],
        tema = json['tema'];
  Map toJson() {
    return {
      'id': id,
      'titulo': titulo,
      'descricao': descricao,
      'caminhoImagem': caminhoImagem,
      'criadoEm': criadoEm,
      'excluidoEm': excluidoEm,
      'linkYoutube': linkYoutube,
      'materialComplementar': materialComplementar,
      'realizador': realizador,
      'tema': tema
    };
  }
}
