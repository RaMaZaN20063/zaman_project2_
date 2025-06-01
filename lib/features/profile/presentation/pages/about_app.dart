import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('О Компании')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'О приложении Zaman',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                'Zaman — это современное мобильное приложение, созданное для удобного, быстрого и безопасного обмена валют. Мы стремимся предоставить пользователям актуальную информацию о курсах валют и надёжных обменных пунктах.',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: 15,),
              Image.network('https://ulysmedia.kz/cache/imagine/1200/uploads/news/2024/11/16/67384db1493f5040812851.jpeg'),
              SizedBox(height: 15),
              Text(
                'Что мы предлагаем:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• ", style: TextStyle(fontSize: 20)), 
                      Expanded(
                        child: Text("Актуальные курсы валют в реальном времени", style: TextStyle(fontSize: 17),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• ", style: TextStyle(fontSize: 20)),
                      Expanded(
                        child: Text("Интерактивная 3D-карта с пунктами обмена", style: TextStyle(fontSize: 17),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• ", style: TextStyle(fontSize: 20)),
                      Expanded(
                        child: Text("Уведомления о выгодных курсах", style: TextStyle(fontSize: 17),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• ", style: TextStyle(fontSize: 20)),
                      Expanded(
                        child: Text("Бронирование валюты онлайн", style: TextStyle(fontSize: 17),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• ", style: TextStyle(fontSize: 20)),
                      Expanded(
                        child: Text("История операций и калькулятор", style: TextStyle(fontSize: 17),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• ", style: TextStyle(fontSize: 20)),
                      Expanded(
                        child: Text("Удобный и инклюзивный интерфейс", style: TextStyle(fontSize: 17),),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Text('Наша Миссия', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Мы делаем валютный обмен доступным, прозрачным и безопасным для всех пользователей.', style: TextStyle(fontSize: 16),),
              SizedBox(height: 20,),
              Text('Zaman Team, Казахстан', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF28C76F)),),
              SizedBox(height: 15),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Версия приложения: ',
                      style: TextStyle(fontSize: 18),
                    ),
                    TextSpan(
                      text: 'V1.0.0',
                      style: TextStyle(fontSize:18, color:Color(0xFF28C76F) )
                    )
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
