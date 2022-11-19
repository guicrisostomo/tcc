import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProductsCartController {

  list() {
    return FirebaseFirestore.instance
      .collection('cart')
      .where('idSale', isEqualTo: FirebaseAuth.instance.currentUser!.uid);
  }

  void add(idSale, idItem, name, price, qtd, subTotal) {
    FirebaseFirestore.instance.collection('cart').add(
      {
        'idSale': idSale,
        'idItem': idItem,
        'name': name,
        'price': price,
        'qtd': qtd,
        'subTotal': subTotal,
      },
    );
  }

  void remove(id) {
    FirebaseFirestore.instance.collection('cart').doc(id).delete();
  }

  void update(id, qtd, subTotal) {
    FirebaseFirestore.instance.collection('cart').doc(id).update(
      {
        'qtd': qtd,
        'subTotal': subTotal,
      },
    );
  }
}