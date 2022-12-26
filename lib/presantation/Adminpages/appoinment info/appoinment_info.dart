import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class AdmnAppoimentInfo extends StatelessWidget {
  const AdmnAppoimentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Size msize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text('Appoiment'),
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
          ),
          AdmnDocterPart(msize: msize),
          hsizedbox10,
          Expanded(
            child: Stack(
              children: [
                Container(
                  //height: 500,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: radius20,
                    color: cmain,
                  ),
                ),
                Positioned(
                  top: 30,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: radius20,
                      color: mgreyb,
                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30, right: 15, left: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                AdnmScndPart(
                                  mainhead: 'Visit Time',
                                  firsttxt: 'Today 10 March 2022',
                                  scndtxt: '12:30 AM',
                                  icon: Icon(
                                    Icons.alarm,
                                    size: 33,
                                    color: mGreyc,
                                  ),
                                ),
                                hsizedbox40,
                                // hsizedbox20,
                                AdnmScndPart(
                                  mainhead: 'Patiant Information',
                                  firsttxt: 'Name  :  Muhammad Riyaz',
                                  scndtxt: 'Disease  :  Stomak Pain',
                                  icon: Icon(Icons.account_circle_outlined,
                                      size: 33, color: mGreyc),
                                ),
                                hsizedbox40,
                                // hsizedbox20,
                                AdnmScndPart(
                                  mainhead: 'Fees Information',
                                  firsttxt: 'Paid',
                                  scndtxt: '₹500',
                                  icon: Icon(Icons.monetization_on_outlined,
                                      size: 33, color: mGreyc),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: radius10, color: cmain),
                                  width: double.infinity,
                                  height: 45,
                                  child: const Center(
                                    child: Text(
                                      'Accept',
                                      style: TextStyle(color: mWhite),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius: radius10, color: cmain),
                                  width: double.infinity,
                                  height: 45,
                                  child: const Center(
                                    child: Text(
                                      'cancel',
                                      style: TextStyle(color: mWhite),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        hsizedbox15
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class AdnmScndPart extends StatelessWidget {
  const AdnmScndPart({
    required this.mainhead,
    required this.firsttxt,
    required this.scndtxt,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final String mainhead;
  final String firsttxt;

  final String scndtxt;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        wsizedbox10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainhead,
              style: const TextStyle(
                  fontSize: 18.3, fontWeight: FontWeight.w500, color: mBlack),
            ),
            hsizedbox15,
            Text(
              firsttxt,
              style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w400, color: mGreyc),
            ),
            hsizedbox5,
            Text(
              scndtxt,
              style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w400, color: mGreyc),
            ),
          ],
        )
      ],
    );
  }
}

class AdmnDocterPart extends StatelessWidget {
  const AdmnDocterPart({
    Key? key,
    required this.msize,
  }) : super(key: key);

  final Size msize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: msize.height * 0.18,
        decoration: const BoxDecoration(
            //borderRadius: radius15,
            //color: mgreya,
            ),
        child: Row(
          children: [
            SimpleShadow(
              opacity: 1, // Default: 0.5
              color: mgreya, // Default: Black
              offset: const Offset(
                7,
                7,
              ), // Default: Offset(2, 2)
              sigma: 4,
              child: Container(
                width: 120,
                decoration: const BoxDecoration(
                  borderRadius: radius15,
                  color: mWhite,
                ),
                child: Image.asset('lib/assets/docter 1.png'),
              ),
            ),
            wsizedbox20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                hsizedbox15,
                Text('Dr.Jhony MBBS',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                hsizedbox5,
                Text('Cardiolagist',
                    style: TextStyle(
                      color: mGrey,
                      fontSize: 15,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
