class Store {
  String itemsName;
  String itemsImage;
  double itemsPrice;
  double itemsRating;

  Store.items(
      {this.itemsName, this.itemsImage, this.itemsPrice, this.itemsRating});
}

List<Store> storeItems = [
  Store.items(
      itemsName: 'White Can',
      itemsImage: 'https://dell.to/2LKwMa8',
      itemsPrice: 2900,
      itemsRating: 0.0),
  Store.items(
      itemsName: 'Laptop',
      itemsImage: 'https://bit.ly/3oBnQlJ',
      itemsPrice: 16000,
      itemsRating: 0.0),
  Store.items(
      itemsName: 'Shoe',
      itemsImage: 'https://bit.ly/35vUuxM',
      itemsPrice: 2500,
      itemsRating: 0.0),
  Store.items(
      itemsName: 'Bag',
      itemsImage: 'https://bit.ly/38zjm9W',
      itemsPrice: 2700,
      itemsRating: 0.0),
  Store.items(
      itemsName: 'Phone',
      itemsImage: 'https://bit.ly/35xR3Xc',
      itemsPrice: 5000,
      itemsRating: 0.0),
  Store.items(
      itemsName: 'Disk',
      itemsImage: 'https://bit.ly/39lnWaH',
      itemsPrice: 9000,
      itemsRating: 0.0),
  Store.items(
      itemsName: 'Milk',
      itemsImage: 'https://bit.ly/3nywCzL',
      itemsPrice: 2300,
      itemsRating: 5.0),
  Store.items(
      itemsName: 'Yoghurt',
      itemsImage: 'https://bit.ly/39kCg3s',
      itemsPrice: 650,
      itemsRating: 4.0),
];
