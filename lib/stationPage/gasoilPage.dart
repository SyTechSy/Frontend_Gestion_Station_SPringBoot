import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GasoilPage extends StatelessWidget {
  const GasoilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            Transform.translate(
              offset: Offset(0, -15),
              child: Container(
                width: double.infinity,
                child: Card(
                color: Colors.white,
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(width: 1, color: Colors.black)
                ),
                child: ExpansionTile(
                  //leading: CircleAvatar(backgroundImage: AssetImage("assets/logoHy.png")),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Mamoutou",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Traore",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Mercredi",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "05/06/2024",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.8)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff12343b).withOpacity(0.6)),
                  ),
                  children: [
                    // CONTAINER POUR GASOIL
                    // VALEUR ARRIVER ET VALEUR DE DEPART
                    Container(
                      margin: EdgeInsets.only(top: 5 ,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 170,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff12343b).withOpacity(0.6), width: 0.5)
                            ),
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Valeur Arriver",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "255650",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          letterSpacing: 1
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "FCFA",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.orange
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10),

                          Container(
                            width: 170,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff12343b).withOpacity(0.6), width: 0.5)
                            ),
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Valeur de Départ",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "255000",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          letterSpacing: 1
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "FCFA",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.orange
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // CONSOMATION ET PRIX UNITER ET BUDGET OBTENU
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff12343b).withOpacity(0.6), width: 0.5)
                            ),
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Consomation",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "650",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          letterSpacing: 1
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "FCFA",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.orange
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10),

                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff12343b).withOpacity(0.6), width: 0.5)
                            ),
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Prix Unité",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "720",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          letterSpacing: 1
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "FCFA",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.orange
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10),

                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff12343b).withOpacity(0.6), width: 0.5)
                            ),
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Budget Obtenu",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "468000",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          letterSpacing: 1
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "FCFA",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.orange
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // MODIFIER SUPPRIMER ENREGISTRER
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Modifier",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff12343b),
                                letterSpacing: 0.6
                            ),
                          ),
                          Text(
                            "Supprimer",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                                letterSpacing: 0.6
                            ),
                          ),
                          Text(
                            "Enregistre chez Admin",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff12343b),
                                letterSpacing: 0.6
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  iconColor: Color(0xff12343b),
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
