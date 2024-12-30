```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        print('Data fetched successfully: $data');
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle JSON decoding errors gracefully.  For example:
        // - Show a user-friendly message
        // - Retry the request
        // - Use a default value
      }
    } else {
      print('Error: HTTP status code ${response.statusCode}');
      // Consider throwing a custom exception with more context:
      // throw ApiException('HTTP request failed: ${response.statusCode}', response.body);
    }
  } catch (e) {
    print('Network error: $e');
    // Handle network errors (e.g., timeout, no internet connection)
    // Provide appropriate feedback to the user
  }
}
```