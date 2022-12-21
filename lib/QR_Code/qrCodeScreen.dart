import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({super.key});

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  String qrData = 'https://github.com/ravipatel0508';

  TextEditingController qrDataController = TextEditingController();

  final qrKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              RepaintBoundary(
                key: qrKey,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFCD32),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
                    child: QrImage(
                      // backgroundColor: Color(0xffFFCD32),
                      data: qrData,
                      version: QrVersions.auto,
                      size: 200.0,
                      dataModuleStyle: const QrDataModuleStyle(
                          dataModuleShape: QrDataModuleShape.circle,
                          color: Colors.black),
                      eyeStyle: const QrEyeStyle(
                          eyeShape: QrEyeShape.square, color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: qrDataController,
                decoration: const InputDecoration(
                  hintText: 'Enter your data',
                  border: OutlineInputBorder(
                    gapPadding: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 5.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (qrDataController.text.isEmpty) {
                    return;
                  }
                  setState(() => qrData = qrDataController.text);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Generate QR'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
