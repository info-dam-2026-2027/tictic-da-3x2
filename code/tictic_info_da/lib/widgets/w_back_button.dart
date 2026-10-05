import 'package:flutter/material.dart';
import 'package:tictic_info_da/styles/colors.dart';
import 'package:tictic_info_da/styles/others.dart';
import 'package:tictic_info_da/styles/sizes.dart';

class WBackButton extends StatelessWidget {
  const WBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding( // Rajouter un espace autour de l'alignement
      padding: const EdgeInsets.all(kPaddingHorizontalS),
      child: Align( // Aligner le bouton à gauche
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Revenir en arrière
          },
          child: Container(
            decoration: BoxDecoration(
                color: kWhite, // Ajouter le fond blanc
                borderRadius: BorderRadius.circular(kBorderRadiusBackButton), // Mettre les bords arrondis
                border: Border.all(width: kBorderBackButton, color: kDarkGreen) // Mettre la petite bordure verte
            ),
            child: Padding(
              padding: const EdgeInsets.all(kPaddingHorizontal), // Espacer la flêche du contour
              child: Icon(Icons.arrow_back), // Afficher un icon de flêche
            ),
          ),
        ),
      ),
    );
  }
}