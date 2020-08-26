import 'package:flutter_ui/data/repositories/abstract/user_repository.dart';
import 'package:flutter_ui/data/repositories/user_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;


final firstInstance = GetIt.instance;

void init() {
    
    firstInstance.registerLazySingleton(() => http.Client());

    firstInstance.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(remoteUserRepository: firstInstance()));
    

}