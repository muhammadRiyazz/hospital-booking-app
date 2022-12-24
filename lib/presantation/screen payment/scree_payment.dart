import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../core/colors/colors.dart';
import '../../core/constands.dart';

class ScreenPaymnt extends StatelessWidget {
  const ScreenPaymnt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Payment',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: radius10,
                  color: mgreya,
                ),
                height: 40,
                width: 40,
                child: const Icon(
                  size: 15,
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Docterinfoa(),
          const Spacer(),
          const Amount(charge: '₹490.00', text: 'Bokking Charge'),
          const Text(
            "consultatian fee for 1 hour",
            style: TextStyle(fontSize: 15, color: mGreyc),
          ),
          const Spacer(),
          const Amount(charge: '₹10.00', text: 'GST Amount'),
          const Divider(
            thickness: 2,
          ),
          const Total(),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Select  Payment Method',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          SimpleShadow(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: radius15,
                color: mWhite,
              ),
              child: ListTile(
                leading: SizedBox(
                    height: 35,
                    child: Image.asset(
                      'lib/assets/paypal.png',
                      fit: BoxFit.fill,
                    )),
                title: const Text('Paypal'),
                trailing: Radio(
                  value: false,
                  groupValue: this,
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          hsizedbox10,
          SimpleShadow(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: radius15,
                color: mWhite,
              ),
              child: ListTile(
                leading: SizedBox(
                    height: 35,
                    child: Image.asset(
                      'lib/assets/gpay.png',
                      fit: BoxFit.fill,
                    )),
                title: const Text('Google pay'),
                trailing: Radio(
                  value: false,
                  groupValue: this,
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          const Spacer(flex: 3),
          TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: radius20,
                            color: mWhite,
                          ),
                          height: 400,
                          width: 300,
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                decoration:
                    const BoxDecoration(borderRadius: radius10, color: cmain),
                width: double.infinity,
                height: 45,
                child: const Center(
                    child: Text(
                  'Conform Your payment',
                  style: TextStyle(color: mWhite),
                )),
              )),
        ],
      ),
    )));
  }
}

class Total extends StatelessWidget {
  const Total({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Total Amount',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          '₹500.00',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Docterinfoa extends StatelessWidget {
  const Docterinfoa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        borderRadius: radius15,
        color: cmaina,
      ),
      height: 160,
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        wsizedbox5,
        Expanded(
          child: Image.asset(
            'lib/assets/a.png',
            //  fit: BoxFit.c,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dr.Jhony MBBS',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: mgreyb),
                  ),
                  const Text(
                    'Cadiolagist',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: mgreya),
                  ),
                ],
              ),
            ),
            // Container(
            //    padding: EdgeInsets.all(36),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const Text(
            //         'March 20  2022',
            //         style: TextStyle(
            //             fontSize: 18,
            //             fontWeight: FontWeight.bold,
            //             color: mgreyb),
            //       ),
            //       const Text(
            //         '10:45 - 10:10',
            //         style: TextStyle(
            //             fontSize: 15,
            //             fontWeight: FontWeight.bold,
            //             color: mgreyb),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
        SizedBox(
          width: 36,
        )
      ]),
    );
  }
}

class Amount extends StatelessWidget {
  const Amount({
    Key? key,
    required this.text,
    required this.charge,
  }) : super(key: key);
  final String charge;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        Text(
          charge,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
