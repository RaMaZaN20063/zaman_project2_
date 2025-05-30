import 'package:flutter/material.dart';
import 'package:profile_page/features/profile/presentation/pages/contact_us_page.dart';
import 'package:profile_page/features/profile/presentation/pages/settings_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Профиль')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey, width: 1.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.grey,),
                    title: Text('Настройки'),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => SettingsPage()));
                      },
                      icon: Icon(Icons.arrow_forward_ios, size: 20,),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.pages, color: Colors.grey),
                    title: Text('История Брони'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey, width: 1.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.discount, color: Colors.grey),
                    title: Text('Получить скидку'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.share, color: Colors.grey),
                    title: Text('Поделиться приложением'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.comment, color: Colors.grey),
                    title: Text('Отзывы и предложение'),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsPage()));
                      },
                      icon: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1.0, color: Colors.grey),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.people, color: Colors.grey),
                    title: Text('О компаний'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.dangerous, color: Colors.grey),
                    title: Text('О приложение'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.question_answer, color: Colors.grey),
                    title: Text('Помощь'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey, width: 1.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text('Выйти', style: TextStyle(color: Colors.red)),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.red, size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
