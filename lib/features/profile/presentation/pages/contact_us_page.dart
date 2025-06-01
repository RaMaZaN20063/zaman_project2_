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
      appBar: AppBar(title: Text('Отзыв и придложение')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Нам важно ваше мнение!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  'Помогите нам сделать Zaman ещё лучше. Оставьте отзыв или предложение — мы обязательно учтём его в будущих обновлениях.',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 30),
                Text('Контакт (необязательно)', style: TextStyle(fontSize: 17)),
                SizedBox(height: 10),
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
                Text('Ваш отзыв', style: TextStyle(fontSize: 17)),
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
                SizedBox(height: 15),
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0E4B36), 
                    foregroundColor: Colors.white, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ), 
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFF0E4B36),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Отправить',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500, 
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
