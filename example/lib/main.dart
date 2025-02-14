import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Svg Provider Example'),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            repeat: ImageRepeat.repeat,
            image: Svg(
              'assets/test.svg',
              size: Size(10, 10),
            ),
            colorFilter: ColorFilter.mode(
              Colors.black12,
              BlendMode.srcIn,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: 150,
                    height: 150,
                    image: Svg('assets/test.svg'),
                    color: Colors.red,
                  ),
                  SizedBox(width: 25),
                  Image(
                    width: 150,
                    height: 150,
                    image: Svg('assets/sun.svg', package: 'example_sub_package'),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Image(
                width: 200,
                height: 200,
                image: Svg(
                  'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/ubuntu.svg',
                  source: SvgSource.network,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
