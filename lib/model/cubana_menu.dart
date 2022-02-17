
class MenuList{
  String menuNames;
  String menuImages;
  List<SubCategory> subcategoryItems;

  MenuList({
    required this.menuNames,
    required this.menuImages,
    required this.subcategoryItems,
  });
}

class SubCategory{
  String subcategoryName;
  List<String> subcategoryImage;

  SubCategory({
    required this.subcategoryName,
    required this.subcategoryImage,
  });
}



