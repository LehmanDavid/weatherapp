import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/repositories/token_repository.dart';
import '../models/token_model.dart';

class TokenRepositoryImpl implements TokenRepository {
  FirebaseFirestore tokenInstance = FirebaseFirestore.instance;

  @override
  Future<List<TokenModel>> getValidTokens() async {
    QuerySnapshot querySnapshot =
        await tokenInstance.collection('tokens').get();
    List<TokenModel> allData = querySnapshot.docs
        .map((doc) => TokenModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();

    return allData..removeWhere((element) => !element.isValid);
  }

  Future<void> updateValidity(String id) async {
    await tokenInstance.collection('tokens').doc(id).update({'isValid': false});
  }
}
