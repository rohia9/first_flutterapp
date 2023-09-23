import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController controller1 = TextEditingController();
  int? result = 0;

  int factory(int x) {
    int fact = 1;
    for (int i = 1; i <= x; i++) fact *= i;
    return fact;
  }

  int conv(int x) {
    return -1 * x;
  }

  int multipl(int x) {
    int sum = 0;
    for (int i = 1; i <= 30; i++) sum = sum + x;
    print(sum);
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colculator App'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        // color: colors.amber,
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          
          TextField(
            controller: controller1,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Second Number'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = factory(int.parse(controller1.text));
                  });
                  controller1.clear();
                },
                child: const Text('factorial')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = conv(int.parse(controller1.text));
                  });
                  controller1.clear();
                },
                child: const Text('conv')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = multipl(int.parse(controller1.text));
                  });
                },
                child: const Text('Multi')),
          ]),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Result: $result',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
