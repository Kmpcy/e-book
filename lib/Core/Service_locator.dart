import 'package:booksy/Core/errors/Api/api_services.dart';
import 'package:booksy/Features/Home/Repos/home_repo_imp.dart';
import 'package:booksy/Features/Search/Repos/search_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
   getIt.registerSingleton<ApiServices>(
    ApiServices(dio: Dio()),
  );

   getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(apiServices: getIt.get<ApiServices>()),
  );


getIt.registerSingleton<SearchRepoImp>(
    SearchRepoImp(apiServices: getIt.get<ApiServices>()),
  );

}
