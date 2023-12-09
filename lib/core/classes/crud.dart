import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:final_project/core/classes/status_request.dart';
import 'package:final_project/core/functions/check_internet.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class CRUD {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {

        var response = await http.post(Uri.parse(linkUrl), body: data);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.failure);
      }
    } catch (e) {
      debugPrint(e.toString() + " ===================");
      return const Left(StatusRequest.serverException);
    }
  }
}