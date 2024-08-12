// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// Model for getting card's prime
///
class TapPayPrime {
  TapPayPrime({
    required this.success,
    this.status,
    this.message,
    this.prime,
    this.name,
    this.email,
    this.phone,
  });

  /// The result of getting card's prime
  ///
  final bool success;

  /// Failure status code of getting card's prime
  ///
  final int? status;

  /// Failure message of getting card's prime
  ///
  final String? message;

  /// The prime of the card
  ///
  final String? prime;

  /// The name of the card
  ///
  final String? name;

  /// The email of the card
  ///
  final String? email;

  /// The phone of the card
  final String? phone;

  TapPayPrime copyWith({
    bool? success,
    int? status,
    String? message,
    String? prime,
    String? name,
    String? email,
    String? phone,
  }) {
    return TapPayPrime(
      success: success ?? this.success,
      status: status ?? this.status,
      message: message ?? this.message,
      prime: prime ?? this.prime,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'status': status,
      'message': message,
      'prime': prime,
      'name': name,
      'email': email,
      'phone': phone,
    };
  }

  factory TapPayPrime.fromMap(Map<String, dynamic> map) {
    return TapPayPrime(
      success: map['success'] as bool,
      status: map['status'] != null ? map['status'] as int : null,
      message: map['message'] != null ? map['message'] as String : null,
      prime: map['prime'] != null ? map['prime'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TapPayPrime.fromJson(String source) =>
      TapPayPrime.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TapPayPrime(success: $success, status: $status, message: $message, prime: $prime, name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(covariant TapPayPrime other) {
    if (identical(this, other)) return true;

    return other.success == success &&
        other.status == status &&
        other.message == message &&
        other.prime == prime &&
        other.name == name &&
        other.email == email &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return success.hashCode ^
        status.hashCode ^
        message.hashCode ^
        prime.hashCode ^
        name.hashCode ^
        email.hashCode ^
        phone.hashCode;
  }
}
