import 'package:correios_mobile_app/core/routes/const_routes.dart';
import 'package:correios_mobile_app/features/search_cep/data/datasources/remote/search_cep_datasource_impl.dart';
import 'package:correios_mobile_app/features/search_cep/data/datasources/search_cep_datasource.dart';
import 'package:correios_mobile_app/features/search_cep/data/repositories/search_cep_repository.dart';
import 'package:correios_mobile_app/features/search_cep/domain/repositories/search_cep_repository.dart';
import 'package:correios_mobile_app/features/search_cep/domain/usecases/get_cep_via_cep_usecase.dart';
import 'package:correios_mobile_app/features/search_cep/domain/usecases/get_cep_via_cep_usecase_impl.dart';
import 'package:correios_mobile_app/features/search_cep/presentation/bloc/search_cep_bloc.dart';
import 'package:get_it/get_it.dart';

class AppInjector {
  static initialize() {
    GetIt getIt = GetIt.instance;

    // Core

    getIt.registerLazySingleton(() => ConstRoutes());

    // Datasources

    getIt.registerLazySingleton<SearchCepDatasource>(
        () => SearchCepDatasourceImpl());

    // Repositories
    
    getIt.registerLazySingleton<SearchCepRepository>(
        () => SearchCepRepositoryImpl(getIt()));
        

    // Usecases
    getIt.registerLazySingleton<GetCepViaCepUsecase>(
        () => GetCepViaCepUsecaseImpl(getIt()));

    // Bloc
    
    getIt.registerFactory(() => SearchCepBloc(getIt()));
  }
}
