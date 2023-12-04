import 'package:bookly/core/uitls/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/models/repo/home_repo_implement.dart';

GetIt getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<ApiService>(ApiService(
    Dio(),
  ));
  getIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(getIt.get<ApiService>()));
}
