import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<int> sendEmail({
  required String company,
  required String email,
  required String name,
  required String work,
  required String body,
}) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

  await dotenv.load(fileName: ".env");
  var serviceId = dotenv.env['SERVICE_ID_KEY'];
  var templateId = dotenv.env['TEMPLATE_ID_KEY'];
  var userId = dotenv.env['USER_ID_KEY'];

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
