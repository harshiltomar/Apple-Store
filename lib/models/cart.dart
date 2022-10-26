import 'package:codepur/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
//catalogue field
  CatalogModel? _catalogue;

//collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

  // Get Catalogue
  CatalogModel get catalogue => _catalogue!;

  set catalogue(CatalogModel newCatalogue) {
    _catalogue = newCatalogue;
  }

  //Get items in the cart
  List<Item> get items =>
      _itemIds.map((id) => _catalogue!.getById(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}