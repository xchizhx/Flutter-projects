import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Image.network(
                  "https://ichip.ru/images/cache/2023/5/2/q90_718962_55dd37a1453a58112f0f01b5f.jpeg",
                  fit: BoxFit.fitHeight,
                  height: 360,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Text("Смартфон Huawei Nova 11i",
                      style: TextStyle(fontSize: 22)),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25, left: 18, right: 18),
                      child: Text(
                        "Смартфон HUAWEI nova 11i оснащен полноэкранным IPS-дисплеем диагональю 6.8 дюймов, что удобно для просмотра фильмов, фотографий, игр или приложений. Тонкий корпус черного цвета изготовлен из прочного пластика, устойчивого к воздействию внешних факторов. Благодаря 8-ядерному процессору и 8 ГБ оперативной памяти, загрузка данных осуществляется с высокой скоростью. Частота экрана 90 Гц обеспечивает плавный переход и смену картинки.Смартфон HUAWEI nova 11i имеет камеру 48+2 Мп, с помощью которой можно делать четкие и детализированные изображения при разном уровне освещенности. Слот для карт рассчитан на две SIM, что удобно для разделения личных или рабочих разговоров. Объема памяти на 128 ГБ достаточно для хранения большого количества информации. Батарея мощностью 40 Вт поддерживает быструю зарядку и рассчитана на длительную работу.",
                        style:
                            TextStyle(color: Color.fromARGB(255, 22, 22, 22)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 119,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(0, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255)
                ])),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
                left: 18, top: 48, right: 18, bottom: 23),
            child: OutlinedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: double.infinity,
                          height: 161,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 18, top: 26, right: 18),
                                child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        minimumSize: Size(double.infinity, 48)),
                                    child: Text("Добавить в корзину")),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 18, top: 13, right: 18, bottom: 26),
                                child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        minimumSize: Size(double.infinity, 48)),
                                    child: Text("Купить в один клик")),
                              )
                            ],
                          ),
                        );
                      });
                },
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48)),
                child: Text("Купить")),
          ),
        ),
      ]),
    );
  }
}
