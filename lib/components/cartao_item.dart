import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/cartao.dart';

class CartaoItem extends StatelessWidget {
  final Cartao cartao;
  final void Function()? onTap;
  const CartaoItem({Key? key, required this.cartao, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.card_giftcard,
          size: 20,
          color: Colors.white,
        ),
      ),
      title: Text(cartao.cardHolderName),
      subtitle: Text(DateFormat('MM/yyyy').format(cartao.expiryDate)),
      trailing: Text('CVV: ${cartao.cvvCode}',
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Colors.purple),
      ),
      onTap: onTap,
    );
  }
}
