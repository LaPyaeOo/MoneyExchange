import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:money_rates/ob/response_ob.dart';
import 'package:money_rates/utils/app_constants.dart';

class BaseNetwork {
//  Future<Map<String, String>> getHeader() async {
//    String ss = await SharedPref.getData(key: SharedPref.langauge);
//    if (ss == null || ss == "null") {
//      ss = "en";
//    }
//    return {
//      "Authorization": await SharedPref.getData(key: SharedPref.token),
//      "Accept": "application/json",
//      "language": ss
//    };
//  }

  Future<ResponseOb> getRequest({String endUrl}) async {
//    return await getHeader().then((header) async {
//      print("Header --- " + header.toString());
// Important Header
    ResponseOb rv = ResponseOb();
    return await http.get(BASE_URL + endUrl).then((res) {
      print(
          "GET REQUEST ==========> ${res.request.url} ${res.statusCode.toString()}" +
              res.body.toString());

      if (res.statusCode == 200) {
        rv.message = MsgState.data;
        rv.data = res.body.toString();
      } else {
        rv.message = MsgState.error;
        rv.data = "Data Fetching Error";
      }
      return rv;
    }).catchError((e) {
      if (e is SocketException) {
        rv.message = MsgState.error;
        rv.data = "No Internet";
      } else {
        rv.message = MsgState.error;
        rv.data = "Data ${e.toString()} Error";
      }
      return rv;
    });
//    });
  }

  Future<ResponseOb> postRequest({String endUrl, Map body}) async {
//    return await getHeader().then((header) {
    ResponseOb rv = ResponseOb();
    return http.post(BASE_URL + endUrl, body: body).then((res) {
      print(
          "POST REQUEST ==========> ${res.request.url} ${res.statusCode.toString()}" +
              res.body.toString());

      if (res.statusCode == 200) {
        rv.message = MsgState.data;
        rv.data = res.body;
      } else {
        rv.message = MsgState.error;
        rv.data = res.body;
      }
      return rv;
    }).catchError((e) {
      // print(e.toString() + ">>");
      if (e is SocketException) {
        rv.message = MsgState.error;
        rv.data = "No Internet";
      } else {
        rv.message = MsgState.error;
        rv.data = "Data ${e.toString()} Error ";
      }
      return rv;
    });
//    });
  }

  Future<ResponseOb> deleteRequest({String endUrl}) async {
//    return await getHeader().then((header) {
    ResponseOb rv = ResponseOb();
    return http.delete(BASE_URL + endUrl).then((res) {
      print(
          "POST REQUEST ==========> ${res.request.url} " + res.body.toString());
      print("POST REQUEST Status Code ***==========> " +
          res.statusCode.toString());
      if (res.statusCode == 200) {
        rv.message = MsgState.data;
        rv.data = res.body;
      } else {
        rv.message = MsgState.error;
        rv.data = "Data Fetching Error";
      }
      return rv;
    }).catchError((e) {
      if (e is SocketException) {
        rv.message = MsgState.error;
        rv.data = "No Internet";
      } else {
        rv.message = MsgState.error;
        rv.data = "Data ${e.toString()} Error ";
      }
      return rv;
    });
//    });
  }
}
