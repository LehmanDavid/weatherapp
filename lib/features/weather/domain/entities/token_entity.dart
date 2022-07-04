import 'package:equatable/equatable.dart';

class TokenEntity extends Equatable {
  final bool isValid;
  final String token;
  final String id;

  const TokenEntity({
    required this.id,
    required this.isValid,
    required this.token,
  });

  @override
  List<Object?> get props => [
        isValid,
        token,
        id,
      ];
}
