import 'package:dartz/dartz.dart';
import 'package:sky_printing_admin/core/core.dart'; 
import 'package:sky_printing_admin/models/login/login_response.dart'; 
import 'package:sky_printing_admin/models/register/register_response.dart';
import 'package:sky_printing_admin/module/login/usecase/post_login.dart';
import 'package:sky_printing_admin/module/register/usecase/post_register.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  );

  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams);
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final DioClient _client;

  AuthRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  ) async {
    final response = await _client.postRequest(
      ListAPI.register,
      data: registerParams.toJson(),
      converter: (response) =>
          RegisterResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }

  @override
  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams) async {
    final response = await _client.postRequest(
      ListAPI.login,
      data: loginParams.toJson(),
      converter: (response) =>
          LoginResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
