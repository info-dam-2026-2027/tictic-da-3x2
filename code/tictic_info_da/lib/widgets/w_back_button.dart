import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/colors.dart';

class WBackButton extends StatelessWidget {
  const WBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); // Revenir en arrière
      },
      child: Container(
        decoration: BoxDecoration(
            color: kWhite, // Ajouter le fond blanc
            borderRadius: BorderRadius.circular(32), // Mettre les bords arrondis // Magic number
            border: Border.all(width: 2, color: kDarkGreen) // Mettre la petite bordure verte // Magic number
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Espacer la flêche du contour // Magic number
          child: Icon(Icons.arrow_back), // Afficher un icon de flêche
        ),
      ),
    );
  }
}