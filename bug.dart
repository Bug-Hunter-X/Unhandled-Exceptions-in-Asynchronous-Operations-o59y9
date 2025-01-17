```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = json.decode(response.body);
      // ...
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (network issues, JSON parsing errors)
    print('Error: $e');
    // Consider rethrowing the exception or handling it appropriately based on the context
    rethrow; // Re-throw to let calling functions handle the error
  }
}
```