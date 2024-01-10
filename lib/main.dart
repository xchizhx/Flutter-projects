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
      body: Column(
        children: [
              Expanded(
                flex: 360,
                  child: Image.network(
                "https://ichip.ru/images/cache/2023/5/2/q90_718962_55dd37a1453a58112f0f01b5f.jpeg",
                    fit: BoxFit.fitHeight,
              )),

          Expanded(
            flex: 440,
            child: Column(
              children: [
                Text("Смартфон Huawei Nova 11i"),
                Expanded(
                  child: Stack(
                    children: [
                      Text(
                          "Смартфон HUAWEI nova 11i оснащен полноэкранным IPS-дисплеем диагональю 6.8 дюймов, что удобно для просмотра фильмов, фотографий, игр или приложений. Тонкий корпус черного цвета изготовлен из прочного пластика, устойчивого к воздействию внешних факторов. Благодаря 8-ядерному процессору и 8 ГБ оперативной памяти, загрузка данных осуществляется с высокой скоростью. Частота экрана 90 Гц обеспечивает плавный переход и смену картинки.Смартфон HUAWEI nova 11i имеет камеру 48+2 Мп, с помощью которой можно делать четкие и детализированные изображения при разном уровне освещенности. Слот для карт рассчитан на две SIM, что удобно для разделения личных или рабочих разговоров. Объема памяти на 128 ГБ достаточно для хранения большого количества информации. Батарея мощностью 40 Вт поддерживает быструю зарядку и рассчитана на длительную работу.",
                      ),
                      Container(
                        decoration: BoxDecoration(
                          
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: OutlinedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      children: [

                                      ],
                                    );
                                  });
                            },
                            child: Text("Купить")),
                      )
                    ],
                  ),
                )
              ],
            ),
          )],
      ),
    );
  }
}
