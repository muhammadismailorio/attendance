import 'package:blueex_emp_app_flutter/resources/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  static Future request({
    required String url,
    Map<String, dynamic>? data,
    String token = '',
    String method = 'GET',
  }) async {
    Map<String, String> headers = {};
    headers['Authorization'] = 'Bearer $token';
    if (method == 'POST') {
      headers['Content-Type'] = 'application/json';
    }
    var request = http.Request(method, Uri.parse('$kHost$url'));
    request.body = jsonEncode(data);
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    var res = await response.stream.bytesToString().then((value) {
      return jsonDecode(value);
    });

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("Network success");
      return res;
    } else {
      print("Network error");
      throw Exception(res['message']);
    }
  }
}
