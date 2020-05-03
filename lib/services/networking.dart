import 'dart:convert';
import 'package:http/http.dart' as http;

class NetWorkHelper {
  NetWorkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String _data = response.body;
      var decodeData = jsonDecode(_data);
      return decodeData;
    } else {
      print(response.statusCode);
    }
  }
}
