import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkingHelper {
  final String url;
  NetworkingHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      var data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
