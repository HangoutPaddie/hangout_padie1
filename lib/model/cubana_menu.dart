class MenuList{
  List<String> menuCategoryNames;
  List<String> menuCategoryImages;
  CubanaMenuNames menuSubcategoryNames;
  CubanaMenuImages menuSubcategoryImages;

  MenuList({
    required this.menuCategoryNames,
    required this.menuCategoryImages,
    required this.menuSubcategoryNames,
    required this.menuSubcategoryImages,
  });
}

class CubanaMenuNames{
  List<String> drinksCategoryNames;
  List<String> mealCategoryNames;
  List<String> specialsCategoryNames;

  CubanaMenuNames({
    required this.drinksCategoryNames,
    required this.mealCategoryNames,
    required this.specialsCategoryNames,
  });
}

class CubanaMenuImages{
  List<String> alcoholImageUrl;
  List<String> softdrinksImageUrl;
  List<String> cocktailImageUrl;
  List<String> mealCategoryImageUrls;
  List<String> specialsCategoryImageUrls;

  CubanaMenuImages({
    required this.alcoholImageUrl,
    required this.softdrinksImageUrl,
    required this.cocktailImageUrl,
    required this.mealCategoryImageUrls,
    required this.specialsCategoryImageUrls,
});
}