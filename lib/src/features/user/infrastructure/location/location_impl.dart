import 'package:flutter/services.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/location/location.dart';
import 'dart:convert';


class LocationImpl extends LocationRepository {
  @override
  Future<List<Map<String, String>>> getDistrict(String idProvince) async {
    final String response = await rootBundle
        .loadString('assets/address/districts/$idProvince.json');
    final data = json.decode(response);

    List<Map<String, String>> list = [
      {"id": "000", "name": "Quận/huyện"},
      ...data.map((key, value) => {"id": key, "name": value['name']}),
    ];

    return list;
  }

  @override
  Future<List<Map<String, String>>> getProvince() async {
    final String response =
        await rootBundle.loadString('assets/address/provinces.json');
    final data = json.decode(response);

    List<Map<String, String>> list = [
      {"id": "00", "name": "Tỉnh/thành phố"},
      ...data.map((key, value) => {"id": key, "name": value['name']}),
    ];
    return list;
  }

  @override
  Future<List<Map<String, String>>> getWard(String idDistrict) async {
    final String response =
        await rootBundle.loadString('assets/address/wards/$idDistrict.json');
    final data = json.decode(response);

    List<Map<String, String>> list = [
      {"id": "00000", "name": "Phường/xã"},
      ...data.map((key, value) => {"id": key, "name": value['name']}),
    ];
    return list;
  }
}
