```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print('Error: HTTP request failed with status code ${response.statusCode}');
      return null; // Or throw a custom exception with more context
    }
  } catch (e) {
    print('Error fetching data: $e');
    return null; // Or throw a custom exception, e.g., a `NetworkException`
  }
}
```