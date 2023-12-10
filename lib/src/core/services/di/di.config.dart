// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // InjectableConfigGenerator
// // **************************************************************************

// // ignore_for_file: type=lint
// // coverage:ignore-file

// // ignore_for_file: no_leading_underscores_for_library_prefixes

// import 'package:get_it/get_it.dart' as _i1;
// import 'package:injectable/injectable.dart' as _i2;

// extension GetItInjectableX on _i1.GetIt {
// // initializes the registration of main-scope dependencies inside of GetIt
//   Future<_i1.GetIt> init({
//     String? environment,
//     _i2.EnvironmentFilter? environmentFilter,
//   }) async {
//     final gh = _i2.GetItHelper(
//       this,
//       environment,
//       environmentFilter,
//     );
//     final appModule = _$AppModule();
//     // gh.singleton<_i3.AppConfigurations>(_i3.AppConfigurations());
//     // gh.singleton<_i4.AppFlavorsHelper>(_i4.AppFlavorsHelper());
//     // await gh.factoryAsync<_i5.AppLocalDatabase>(
//     //   () => appModule.prefs,
//     //   preResolve: true,
//     // );
//     // gh.factory<_i6.ConnectivityCheckerHelper>(
//     //     () => _i6.ConnectivityCheckerHelper());
//     // gh.factory<_i7.HttpRequestContext>(
//     //     () => _i7.HttpRequestContext(gh<_i6.ConnectivityCheckerHelper>()));
//     gh.factory<_i9.WeatherLocalDataSource>(
//         () => _i10.WeatherRemoteDataSourceImpl(gh<_i5.AppLocalDatabase>()));
//     gh.factory<_i11.WeatherRemoteDataSource>(
//         () => _i12.WeatherRemoteDataSourceImpl(gh<_i7.HttpRequestContext>()));
    
//     return this;
//   }
// }

// class _$AppModule extends _i20.AppModule {}
