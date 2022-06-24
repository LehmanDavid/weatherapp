import '../../data/models/token_model.dart';

abstract class TokenRepository {
  Future<List<TokenModel>> getValidTokens();
}
