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
    expiryDate: DateTime(2023, 03),
    cvvCode: '123',
    limite: 8000
      ),
      Cartao(
    cardNumber: '5555 6666 7777 8888',
    cardHolderName: 'Maria Santos',
    expiryDate: DateTime(2024, 06),
    cvvCode: '456',
    limite: 6000
      ),
      Cartao(
    cardNumber: '9999 8888 7777 6666',
    cardHolderName: 'Pedro Oliveira',
    expiryDate: DateTime(2025, 12),
    cvvCode: '789',
    limite: 15000
      ),
      Cartao(
    cardNumber: '7777 2222 4444 9999',
    cardHolderName: 'Ana Pereira',
    expiryDate: DateTime(2023, 09),
    cvvCode: '321',
    limite: 3000
      ),
      Cartao(
    cardNumber: '1234 5678 9876 5432',
    cardHolderName: 'Lucas Costa',
    expiryDate: DateTime(2026, 02),
    cvvCode: '654',
    limite: 50000
      ),
      Cartao(
    cardNumber: '9876 5432 1234 5678',
    cardHolderName: 'Laura Ferreira',
    expiryDate: DateTime(2024, 08),
    cvvCode: '789',
    limite: 10000
      ),
      Cartao(
    cardNumber: '1111 9999 2222 8888',
    cardHolderName: 'Eduardo Gonçalves',
    expiryDate: DateTime(2027, 04),
    cvvCode: '234',
    limite: 25000
      ),
      Cartao(
    cardNumber: '2222 4444 6666 8888',
    cardHolderName: 'Carla Ribeiro',
    expiryDate: DateTime(2022, 10),
    cvvCode: '456',
    limite: 500
      ),
      Cartao(
    cardNumber: '3333 7777 5555 9999',
    cardHolderName: 'Rafaela Santos',
    expiryDate: DateTime(2023, 01),
    cvvCode: '678',
    limite: 13000
      ),
            Cartao(
    cardNumber: '5555 3333 1111 7777',
    cardHolderName: 'Roberto Lima',
    expiryDate: DateTime(2026, 07),
    cvvCode: '123',
    limite: 4444
      ),
    ].toList();
  }
}
