```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final data = jsonDecode(response.body);
      // Process the data
      print(data);
    } else {
      // Handle error responses
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request or JSON decoding
    print('Error: $e');
    // Consider rethrowing the exception to be handled higher up
    // rethrow; // uncomment to rethrow the exception
  }
}
```