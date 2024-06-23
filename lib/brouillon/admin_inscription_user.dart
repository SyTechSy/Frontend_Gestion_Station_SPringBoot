import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../main.dart';
import '../compte/custom_clipper.dart';
import 'package:get_it/get_it.dart';
import 'package:frontend_gestion_station/models/utilisateurModel.dart';
import 'package:frontend_gestion_station/services/utilisateurService.dart';

// Initialisez votre service UserService à l'extérieur de votre classe StatefulWidget

class InscriptionPage extends StatefulWidget {
  @override
  _InscriptionPageState createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  final _utilisateurService = GetIt.instance<UtilisateurService>();
  //UtilisateurService utilisateurService = sl<UtilisateurService>();
  final _nomController = TextEditingController();
  final _prenomController = TextEditingController();

  //String messages = '';


  @override
  void dispose() {
    _nomController.dispose();
    _prenomController.dispose();
    super.dispose();
  }

  bool _isImageVisible = true;
  FocusNode _nomFocusNode = FocusNode();
  FocusNode _prenomFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _nomFocusNode.addListener(_onFocusChange);
    _prenomFocusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isImageVisible = !_nomFocusNode.hasFocus && !_prenomFocusNode.hasFocus;
    });
  }

  void _showAlertDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFADC1B3),
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Inscription User',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                if (_isImageVisible)
                  Image.asset(
                    'assets/logoHy.png',
                    height: 150,
                  ),
              ],
            ),
          ),
          Form(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "NOM",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _nomController,
                      focusNode: _nomFocusNode,
                      decoration: InputDecoration(
                        hintText: 'Votre Nom ici',
                      ),
                    ),
                    SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "PRENOM",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _prenomController,
                      focusNode: _prenomFocusNode,
                      decoration: InputDecoration(
                        hintText: 'Votre Prénom ici',
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () async {

                        UserModel newUser = UserModel(
                            nomUtilisateur: _nomController.text,
                            prenomUtilisateur: _prenomController.text
                        );

                        try {
                          _nomController.text = '';
                          _prenomController.text = '';
                          UserModel createdUser = await _utilisateurService.createUser(newUser);
                          print('Creation de l\'utilisateur a été effectuer avec succès: $createdUser');
                          //_showAlertDialog("Succès", 'cree avec succès');
                          showSuccessMessage('Creation avec succès');

                        } catch (e) {
                          // Gérer les erreurs, par exemple email ou mot de passe incorrect
                          print('Erreur lors de la creation de l\'utilisateur: $e');
                          //_showAlertDialog("Error", 'echec de la creation');
                          showErrorMessage('Erreur de creation verifie que je champs ne sont pas vide');
                        }

                      },
                      child: Text(
                        "Inscrire",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff12343b),
                        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "En appuyant sur \"Inscrire\", l'email et le \nmot de passe de l'utilisateur sont \ngénérés automatiquement.",
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //SizedBox(height: 10),
                    //Text(messages, style: TextStyle(color: Color(0xff12343b), fontWeight: FontWeight.w600)),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showSuccessMessage(String  message) {
    final snackBar = SnackBar(
        content: Text(
            message,
          style: TextStyle(
              color: Colors.white
          ),
        ),
      backgroundColor: Color(0xff12343b),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showErrorMessage(String  message) {
    final snackBar = SnackBar(
        content: Text(
            message,
          style: TextStyle(
            color: Colors.white
          ),
        ),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
