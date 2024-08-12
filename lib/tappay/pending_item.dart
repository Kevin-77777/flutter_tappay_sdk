import 'dart:convert';

class PendingItem {
  PendingItem({
    required this.name,
  });

  final String name;

  PendingItem copyWith({
    String? name,
  }) {
    return PendingItem(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PendingItem.fromMap(Map<String, dynamic> map) {
    return PendingItem(
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PendingItem.fromJson(String source) =>
      PendingItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PendingItem(name: $name)';

  @override
  bool operator ==(covariant PendingItem other) {
    if (identical(this, other)) return true;

    return other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
