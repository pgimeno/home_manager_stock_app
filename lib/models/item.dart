class Item {
  final int id;
  final String name;
  final bool isInStock;
  final bool isInChart;
  final DateTime createdAt;
  final DateTime updatedAt;

  Item({
    required this.id,
    required this.name,
    required this.isInStock,
    required this.isInChart,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      isInStock: json['isInStock'],
      isInChart: json['isInChart'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isInStock': isInStock,
      'isInChart': isInChart,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}

/*
"id":2,
"name":"Leche",
"isInStock":true,
"isInChart":false,
"createdAt":"2024-09-28T16:20:24.788Z",
"updatedAt":"2024-09-28T16:20:24.788Z"},
*/