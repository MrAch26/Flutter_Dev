import 'package:bitcoin_ticker/ENV/env.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoinHelper {
  CoinHelper({this.url});
  final String url;

  Future getDataFromAPI() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      // to get the rate
      return decodedData['rate'];
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = kAPI_KEY;

// CoinHelper data26 = CoinHelper(url: '$coinAPIURL/BTC/USD?apikey=$apiKey');
