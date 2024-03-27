class Resep{
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Resep(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Resep> samples = [
    Resep(
      'Ayam Lodho', 
      'assets/bayamlodho.jpg',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],
      ),
    Resep(
      'Bakso Malang', 
      'assets/bbaksomalang.jpeg',
      2,
      [
        Ingredient(1, 'can', 'Tomato Soup'),
      ],
      ),
    Resep(
      'Lontong Balap', 
      'assets/blontongbalap.jpg',
      1,
      [
        Ingredient(2, 'slices', 'Cheese'),
        Ingredient(2, 'slices', 'Bread'),
      ],
      ),
    Resep(
      'Nasi Krawu', 
      'assets/bnasikrawu.webp',
      24,
      [
        Ingredient(4, 'cups', 'flour'),
        Ingredient(2, 'cups', 'sugar'),
        Ingredient(0.5, 'cups', 'chocolate chips'),
      ],
      ),
    Resep(
      'Pecel Madiun', 
      'assets/bpecelmadiun.webp',
      1,
      [
        Ingredient(4, 'oz', 'nachos'),
        Ingredient(3, 'oz', 'taco meat'),
        Ingredient(0.5, 'cup', 'cheese'),
        Ingredient(0.25, 'cup', 'chopped tomatoes'),
      ],
      ),
    Resep(
      'Rawon', 
      'assets/brawon.jpg',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],
      ),
    Resep(
      'Rujak Cingur', 
      'assets/brujakcingur.webp',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],
      ),
    Resep(
      'Sate Madura', 
      'assets/bsatemadura.jpg',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],
      ),
    Resep(
      'Soto Lamongan', 
      'assets/bsotolamongan.jpg',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],
      ),
    Resep(
      'Tahu Tek', 
      'assets/btahutek.JPG',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],
      ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}