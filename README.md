# Unhandled Exceptions in Dart Network Requests

This example demonstrates a common error in Dart: unhandled exceptions during asynchronous network requests.  The `fetchData` function attempts to fetch data from a remote API. However, it lacks robust error handling.  This can lead to crashes or unexpected behavior if the network request fails or the JSON response is malformed.

The solution demonstrates best practices for handling exceptions and providing user-friendly error messages.