import 'package:latihan1/features/auth/data/models/login_payload.dart';
import 'package:latihan1/features/auth/data/models/login_response.dart';
import 'package:latihan1/features/auth/data/models/tenant_payload.dart';
import 'package:latihan1/features/auth/data/models/tenant_response.dart';

abstract class AuthDatasource {
  Future<TenantResponse> code(TenantPayload payload);
  Future<TenantResponse> info(String accessToken);
  Future<LoginResponse> login(LoginPayload payload);
}
