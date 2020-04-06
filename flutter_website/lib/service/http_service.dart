import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:async';

Future request(url, {formData}) async {
  try {
    Response response;
    Dio dio = Dio();
    dio.options.contentType =
        ContentType.parse('application/x-www-form-urlencoded') as String;
    response = await dio.post(url, data: formData);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('后端异常，请检查测试代码和服务器运行情况...');
    }
  } catch (e) {
    return print('error: $e');
  }
}
