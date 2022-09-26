import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/global.dart';




class CupertinoCameraScreen extends StatefulWidget {
  const CupertinoCameraScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoCameraScreen> createState() => _CupertinoCameraScreenState();
}

class _CupertinoCameraScreenState extends State<CupertinoCameraScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click to Convert Platform',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Global.isIOS = !Global.isIOS;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Transform.scale(scale : 1,child: Image.asset('assets/images/android.png',color: Colors.green,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
