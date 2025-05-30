import 'package:flutter/material.dart';
import 'package:profile_page/features/profile/data/mail_service.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  Future<void> _onSendPressed() async {
    try {
      await EmailService.sendEmail(
        recipient: emailController.text,
        subject: subjectController.text,
        body: bodyController.text,
      );

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Письмо успешно отправлено!")));

      emailController.clear();
      subjectController.clear();
      bodyController.clear();
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Ошибка при отправке письма: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Отзыв и придложение'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Почта получателя",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: subjectController,
                decoration: InputDecoration(
                  hintText: "Тема письма",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: bodyController,
                decoration: InputDecoration(
                  hintText: "Помоги нам совершанствовать наш продукт",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _onSendPressed,
                child: Container(
                  
                  width: double.infinity,
                  child: Center(child: Text('Отправить', style: TextStyle(fontSize: 15),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
