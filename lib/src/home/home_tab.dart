import 'package:flutter/material.dart';
import 'package:foodfinder/src/config/custom_colors.dart';
import 'package:foodfinder/src/home/components/category_title.dart';

class HomeTab extends StatelessWidget {
  HomeTab({Key? key});

  List<String> categorias = [
    "Sushi",
    "Sashimi",
    "Tempura",
    "Ramen",
    "Udon",
    "Miso Soup",
    "Yakitori",
    "Teriyaki",
    "Gyoza",
    "Okonomiyaki",
    "Nigiri",
    "Mochi",
    "Matcha",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                  text: "Food",
                  style: TextStyle(
                    color: CustomColor.customSwatchColor,
                  )),
              TextSpan(
                  text: "Finder",
                  style: TextStyle(color: CustomColor.customContrastColor))
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 14, right: 14),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                child: IconButton(
                  onPressed: () {},
                  icon: Stack(
                    children: [
                      Icon(Icons.shopping_cart),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red, // Cor de fundo do distintivo
                          ),
                          constraints: BoxConstraints(
                            minWidth: 15,
                            minHeight: 15,
                          ),
                          child: Text(
                            '13', // Conteúdo do distintivo
                            style: TextStyle(
                              color: Colors.white, // Cor do texto
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  color: CustomColor.customSwatchColor,
                  iconSize: 36,
                ),
              ),
            ),
          )
        ],
      ),
      //Campo de pesquisa
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 54, 59, 41),
                  isDense: true,
                  hintText: "Pesquise aqui...",
                  hintStyle:
                      TextStyle(color: Colors.grey.shade400, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.search,
                    color: CustomColor.customContrastColor,
                    size: 27,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none))),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CategoryTitle(
                  category: categorias[index],
                  isSelected: false,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return  const SizedBox(width: 10);
              },
              itemCount: categorias.length,
            ),
          )
        ],
      ),
      //categorias

      ///grid
    );
  }
}
