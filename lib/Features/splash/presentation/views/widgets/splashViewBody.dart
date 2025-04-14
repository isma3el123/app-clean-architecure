import 'package:app_clean_architecture/Features/Home/presentation/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool _moved = false;
  bool _scaled = false;

  @override
  void initState() {
    super.initState();

    // بدء التحريك بعد 300ms
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _moved = true;
      });

      // بدء التكبير بعد وصول الصورة للمنتصف (تأخير إضافي)
      Future.delayed(Duration(seconds:1), () {
        setState(() {
          _scaled = true;
        });

        // الانتظار حتى انتهاء الأنيميشن (800 مللي ثانية) ثم الانتظار ثانيتين
        Future.delayed(Duration(seconds: 5), () {
          Get.to(() => Home());
        });
      });
    });
  }

  // دالة استخراج الكود الخاص بالتحريك والتكبير للصورة
  Widget _buildAnimatedLogo() {
    return AnimatedAlign(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut, // تأثير ناعم للتحريك
      alignment: _moved ? Alignment.center : Alignment.topRight,
      child: AnimatedScale(
        duration: Duration(milliseconds: 800),
        scale: _scaled ? 1.5 : 1.0,
        curve: Curves.elasticOut, // تأثير مميز للتكبير
        child: Image.asset(
          Assets.logo,
          width: 250,
          height: 250,
        ),
      ),
    );
  }

  // دالة استخراج الكود الخاص بالتحريك والتكبير للنص
  Widget _buildAnimatedText() {
    return AnimatedAlign(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut, // تأثير ناعم للتحريك
      alignment: _moved ? Alignment(0.0, 0.2) : Alignment.bottomLeft,
      child: AnimatedScale(
        duration: Duration(milliseconds: 800),
        scale: _scaled ? 1.5 : 1.0,
        curve: Curves.elasticOut, // تأثير مميز للتكبير
        child: Text(
          "Hello in movie app",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildAnimatedLogo(),
        _buildAnimatedText(),
      ],
    );
  }
}
