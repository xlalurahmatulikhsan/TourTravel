import 'package:dio/dio.dart';
import 'package:slicing/configs/config.dart';

class AuthService {
  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post('${ApiUrl().url}/login',
          options: Options(headers: {
            "Content-Type": "application/json",
          }),
          data: {
            "email": email,
            "password": password,
          });
      if (response.statusCode == 200) {
        return true;
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  Future<bool> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post('${ApiUrl().url}/register',
          options: Options(headers: {
            "Content-Type": "application/json",
          }),
          data: {
            "name": name,
            "email": email,
            "password": password,
          });
      if (response.statusCode == 201) {
        return true;
      }
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      await Dio().post('http:${ApiUrl().url}/logout');
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
