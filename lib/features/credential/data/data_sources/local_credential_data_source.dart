abstract class LocalCredentialDataSource {
  Future<void> clear();
  Future<String?> getRefreshToken();
  Future<void> saveRefreshToken(String refreshToken);
}