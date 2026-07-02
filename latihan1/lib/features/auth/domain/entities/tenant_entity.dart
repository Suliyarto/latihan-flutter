import 'package:latihan1/features/auth/data/models/tenant_entity_isar.dart';

class TenantEntity {
  final int? id;
  final String? name;
  final String? code;
  final String? logo;
  final String? accessToken;

  TenantEntity({
    required this.id,
    required this.name,
    required this.code,
    required this.logo,
    required this.accessToken,
  });

  factory TenantEntity.fromJson(Map<String, dynamic> json) {
    return TenantEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      logo: json['logo'] as String?,
      accessToken: json['access_token'] as String?,
    );
  }

  TenantEntityIsar toIsar() {
    return TenantEntityIsar(
      id: id,
      name: name ?? '',
      code: code ?? '',
      logo: logo ?? '',
      accessToken: accessToken ?? '',
    );
  }
}
