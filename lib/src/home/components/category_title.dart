import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key,
    required this.category,
    required this.isSelected,
  }) : super(key: key);

  final String category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category),
    );
    // Você pode adicionar o conteúdo do widget aqui
  }
}
