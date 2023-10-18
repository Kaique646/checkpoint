import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CartaopPage extends StatefulWidget {
  const CartaopPage({super.key});

  @override
  State<CartaopPage> createState() => _CartaoPageState();
}

class _CartaoPageState extends State<CartaopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartão de Crédito'),
      ),
      body: Center(
        child: Column(
          children: [
            CreditCardWidget(
              onCreditCardWidgetChange: (CreditCardBrand brand) {
                // Você pode lidar com as alterações no widget do cartão de crédito aqui
              },
              cardNumber: '1234 5678 9012 3456',
              expiryDate: '12/24',
              cardHolderName: 'John Doe',
              cvvCode: '123',
              showBackView: false,
            ),
            SizedBox(
              height: 20,
              width: 50,
            ), // Espaço entre o cartão de crédito e o texto
            Container(
              child: Column(
                children: [
                  Text(
                    'Limite do Cartão de Crédito',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                    width: 20,
                  ), // Espaço entre o texto e a barra de progresso
                  LinearProgressIndicator(
                    value:
                        0.5, // Defina o valor da barra de progresso conforme necessário (entre 0 e 1)
                  ),
                                    Text(
                    'total: ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
            floatingActionButton: FloatingActionButton(
        heroTag: "cartao-cadastro",
        onPressed: () {
          Navigator.pushNamed(context, '/cartao-cadastro');
        },
        child: const Icon(Icons.add),
      )
    );
  }
}
