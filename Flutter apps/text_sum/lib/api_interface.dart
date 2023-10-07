import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiInterface {
  Future getData(String text) async {
    var url =
        Uri.https('api-inference.huggingface.co', 'models/google/pegasus-xsum');
    var response = await http.post(url, body: {
      "inputs": text
    }, headers: {
      'Authorization': 'Bearer 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'
    });
    var res = json.decode(response.body);
    print(res);
    if (response.statusCode == 200) {
      return res;
    } else {
      return "";
    }
  }
}
