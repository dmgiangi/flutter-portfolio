import 'dart:convert';

import 'package:http/http.dart' as http;

Future<int> sendEmail({
  required String company,
  required String email,
  required String name,
  required String work,
  required String body,
}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  const serviceId = '';
  const templateId = '';
  const userId = '';
  final response = await http.post(url,
      headers: {
        'Content-Type': 'application/json'
      }, //This line makes sure it works for all platforms.
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'name': name,
          'email': email,
          'company': company,
          'work': work,
          'body': body
        }
      }));
  return response.statusCode;
}
