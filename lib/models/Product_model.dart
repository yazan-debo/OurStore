// ignore_for_file: file_names

class ProductModel {
  final int id, price, quan;
  final String info, date, text, rank;
  dynamic imag;
  ProductModel(
      {required this.id,
      required this.price,
      required this.info,
      required this.date,
      this.imag,
      required this.text,
      required this.quan,
      required this.rank});
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    quan: 1,
    info: 'anythi@gmail.com',
    price: 20,
    date: 'xx/xx/xxxx',
    rank: '1',
    imag: 'images/1.png',
    text: 'Broduct number 1',
  ),
  ProductModel(
    id: 1,
    quan: 1,
    info: 'anythi@gmail.com',
    price: 20,
    date: 'xx/xx/xxxx',
    rank: '1',
    imag: 'images/1.png',
    text: 'Broduct number 1',
  ),
  ProductModel(
    id: 1,
    quan: 1,
    info: 'anythi@gmail.com',
    price: 20,
    date: 'xx/xx/xxxx',
    rank: '1',
    imag: 'images/1.png',
    text: 'Broduct number 1',
  ),
];
