class DevisModel {
  int? id;
  double valeurArriver;
  double valeurDeDepart;
  double prixUnite;
  double consommation;
  double budgetObtenu;
  DateTime dateAddDevis;
  int? idUser;
  String nomUtilisateur;
  String prenomUtilisateur;

  DevisModel({
    required this.id,
    required this.valeurArriver,
    required this.valeurDeDepart,
    required this.prixUnite,
    required this.consommation,
    required this.budgetObtenu,
    required this.dateAddDevis,
    required this.idUser,
    required this.nomUtilisateur,
    required this.prenomUtilisateur,
  });

  factory DevisModel.fromMap(Map<String, dynamic> json) {
    return DevisModel(
      id: json['idDevis'] != null ? (json['idDevis'] is int ? json['idDevis'] : int.tryParse(json['idDevis'].toString())) : null,
      valeurArriver: json['valeurArriver'] != null ? (json['valeurArriver'] as num).toDouble() : 0.0,
      valeurDeDepart: json['valeurDeDepart'] != null ? (json['valeurDeDepart'] as num).toDouble() : 0.0,
      prixUnite: json['prixUnite'] != null ? (json['prixUnite'] as num).toDouble() : 0.0,
      consommation: json['consommation'] != null ? (json['consommation'] as num).toDouble() : 0.0,
      budgetObtenu: json['budgetObtenu'] != null ? (json['budgetObtenu'] as num).toDouble() : 0.0,
      //dateAddDevis: json['dateAddDevis'] != null ? DateTime.parse(json['dateAddDevis']['date']) : DateTime.now(),
      dateAddDevis: json['dateAddDevis'] != null && json['dateAddDevis'] is Map<String, dynamic>
          ? DateTime.parse(json['dateAddDevis']['date'])
          : DateTime.now(),
      idUser: json['utilisateur'] != null ? (json['utilisateur']['id'] is int ? json['utilisateur']['id'] : int.tryParse(json['utilisateur']['id'].toString())) : null,
      nomUtilisateur: json['utilisateur'] != null ? json['utilisateur']['nomUtilisateur'] : null,
      prenomUtilisateur: json['utilisateur'] != null ? json['utilisateur']['prenomUtilisateur'] : null,

    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idDevis': id,
      'valeurArriver': valeurArriver,
      'valeurDeDepart': valeurDeDepart,
      'prixUnite': prixUnite,
      'consommation': consommation,
      'budgetObtenu': budgetObtenu,
      'dateAddDevis': dateAddDevis.toIso8601String(),
      'utilisateur': {
        'id': idUser,
        'nomUtilisateur': nomUtilisateur,
        'prenomUtilisateur': prenomUtilisateur,
      },
    };
  }
}
