import 'package:flutter_email_sender/flutter_email_sender.dart';

class EmailService {
  static Future<void> sendEmail({
    required String recipient,
    required String subject,
    required String body,
  }) async {
    final email = Email(
      body: body,
      subject: subject,
      recipients: [recipient],
      isHTML: false
    );

    try {
      await FlutterEmailSender.send(email);
    } catch (e) {
      throw Exception("Failed to send email: $e");
    }
  }
}