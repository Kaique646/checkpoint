import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../models/cartao.dart';
import '../models/tipo_transacao.dart';

class CartaoRepository {
  Future<List<Cartao>> listarCartaos() async {
    await Future.delayed(const Duration(seconds: 5));
    return [
      Cartao(
    cardNumber: '1111 2222 3333 4444',
    cardHolderName: 'João Silva',
    expiryDate: '03/23',
    cvvCode: '123',
    limite: 8000
      ),
      Cartao(
    cardNumber: '5555 6666 7777 8888',
    cardHolderName: 'Maria Santos',
    expiryDate: '06/24',
    cvvCode: '456',
    limite: 6000
      ),
      Cartao(
    cardNumber: '9999 8888 7777 6666',
    cardHolderName: 'Pedro Oliveira',
    expiryDate: '12/25',
    cvvCode: '789',
    limite: 15000
      ),
      Cartao(
    cardNumber: '7777 2222 4444 9999',
    cardHolderName: 'Ana Pereira',
    expiryDate: '09/23',
    cvvCode: '321',
    limite: 3000
      ),
      Cartao(
    cardNumber: '1234 5678 9876 5432',
    cardHolderName: 'Lucas Costa',
    expiryDate: '02/26',
    cvvCode: '654',
    limite: 50000
      ),
      Cartao(
    cardNumber: '9876 5432 1234 5678',
    cardHolderName: 'Laura Ferreira',
    expiryDate: '08/24',
    cvvCode: '789',
    limite: 10000
      ),
      Cartao(
    cardNumber: '1111 9999 2222 8888',
    cardHolderName: 'Eduardo Gonçalves',
    expiryDate: '04/27',
    cvvCode: '234',
    limite: 25000
      ),
      Cartao(
    cardNumber: '2222 4444 6666 8888',
    cardHolderName: 'Carla Ribeiro',
    expiryDate: '10/22',
    cvvCode: '456',
    limite: 500
      ),
      Cartao(
    cardNumber: '3333 7777 5555 9999',
    cardHolderName: 'Rafaela Santos',
    expiryDate: '01/23',
    cvvCode: '678',
    limite: 13000
      ),
            Cartao(
    cardNumber: '5555 3333 1111 7777',
    cardHolderName: 'Roberto Lima',
    expiryDate: '07/26',
    cvvCode: '123',
    limite: 4444
      ),
    ].toList();
  }
}
