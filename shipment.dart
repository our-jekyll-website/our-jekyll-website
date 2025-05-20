class Shipment {
  String orderId;
  String customerName;
  String customerCode;
  DateTime shipmentDate;
  DateTime expectedDeliveryDate;
  String status;

  Shipment({
    required this.orderId,
    required this.customerName,
    required this.customerCode,
    required this.shipmentDate,
    required this.expectedDeliveryDate,
    required this.status,
  });

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'customerName': customerName,
      'customerCode': customerCode,
      'shipmentDate': shipmentDate.toIso8601String(),
      'expectedDeliveryDate': expectedDeliveryDate.toIso8601String(),
      'status': status,
    };
  }

  factory Shipment.fromJson(Map<String, dynamic> json) {
    return Shipment(
      orderId: json['orderId'],
      customerName: json['customerName'],
      customerCode: json['customerCode'],
      shipmentDate: DateTime.parse(json['shipmentDate']),
      expectedDeliveryDate: DateTime.parse(json['expectedDeliveryDate']),
      status: json['status'],
    );
  }
}