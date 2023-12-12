import 'package:flutter/material.dart';
import 'package:flutter_lotry_wheel_custom_paint/lottry_custom_paint.dart';

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double opacity = 0.0;
  late AnimationController _animationController;
  late Animation<double> _animation;
  final Tween<double> tween = Tween<double>(begin: 0, end: 1);
  final  tweenOpacity = Tween<double>(begin: 0, end: 1);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = tween.animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _animationController.repeat(period: const Duration(milliseconds: 1100));
    });
  }

  void _Counter() {
    setState(() {
      _animationController.stop();
    });
  }
  void _opacity() {
    setState(() {
      opacity=opacity==0.0?1:0.0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Fortune Wheel '),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 300,
              child: SizedBox(
                height: 600,
                width: 600,
                child: Image.network(
                    'https://template-box.jp/db_img/sozai/7001/b7d0b9f91fbebbb0aa2f3020c94d4a22.jpg'),
              )),
          Positioned(
              left: 550,
              top: 20,
              child: SizedBox(
                height: 70,
                width: 70,
                child: Image.network(
                    'https://icon2.cleanpng.com/20180204/rqw/kisspng-line-triangle-point-red-down-arrow-png-photos-5a77bb7a3e3fe5.211202631517796218255.jpg'),
              )),
          Positioned(
              left: 495,
              top: 205,
              child: RotationTransition(
                turns: _animation,
                alignment: Alignment.center,
                child: SizedBox(
                  height: 220,
                  width: 220,
                  child: CustomPaint(
                    painter: LottryCustomPaint(),
                  ),
                ),
              )),
          Positioned(
            left: 1000,top: 300,
              child: ButtonBar(
            children: [
              ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text(
                    'Spin Wheel',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
              ElevatedButton(
                  onPressed: _Counter,
                  onLongPress: _opacity,
                  child: const Text(
                    'Stop Wheel',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )),
           Positioned(left: 1050,top:400,
            child: AnimatedOpacity(duration:const Duration(seconds: 5),curve: Curves.bounceOut,opacity: opacity,
              child:const SizedBox(height:30,width: 200,child:  Text('Congralations 🥳🎉',style: TextStyle(fontSize: 18,color: Colors.redAccent),),)))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:_opacity ,child: const Icon(Icons.add)),
    );
  }
}
