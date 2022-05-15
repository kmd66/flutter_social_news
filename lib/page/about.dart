import 'package:flutter_social_news/core/Widgets/hr.dart';
import 'package:flutter_social_news/helper/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        HrText(label: 'نرم افزار',),
        Text('نرم افزار آموزش زبان',style: Style.h4(),),
        Text('نسخه 1',style: Style.h4(),),
        Directionality(textDirection: TextDirection.ltr,
          child:
          Text('© Copyright : Here is Iran.',style: Style.h4(),),
        ),
        Container(margin: const EdgeInsets.only(top: 20),),
        HrText(label: 'معرفی شرکت',),
        Text('شرکت کاوه مکاترونیک آریا (سهامی خاص) که با نام کاما شناخته شده است، در سال ۱۳۸۹ با هدف ارائه راهکارهای نوین علمی و پژوهشی تاسیس شد. این شرکت که مدیریت آن را جمعی از مدرسین دانشگاه و مدیران صنعت به عهده دارند، با تکیه به لطف خداوند متعال و با ابزار دانش و تجربه، امید برقراری پایگاهی مطمئن و نام آشنا برای پر نمودن خلاء بین دانشگاه و صنعت را دارد و امیدوار است که بتواند ضعف ناشی از دانش‌بنیان نبودن تولید و خدمات را برطرف سازد. به طور کلی تحقیق و توسعه به عنوان رکنی از ارکان تولید موفق در دنیا به شمار می آید و با توجه به این مهم، کاما قصد دارد با تلفیق تحقیقات دانشگاهی با پروژه های صنعتی گامی بزرگ را در این راه بردارد.',style: Style.h4(),),

        Container(margin: const EdgeInsets.only(top: 20),),
        HrText(label: 'دپارتمان نرم‌افزار',),
        Text('دپارتمان نرم افزار شرکت با هدف راه اندازی سامانه های اتوماسیون اداری و سامانه های اطلاعات جغرافیایی راه اندازی شده است. این دپارتمان تا کنون پروژه های مختلفی را به طور موفقیت آمیز با بسیاری از ارگان ها و نهادها انجام داده است که از آن جمله می توان به معاونت برنامه ریزی و نظارت راهبردی رئیس جمهور (سازمان برنامه و بودجه)، سازمان اداری و استخدامی کشور، وزارت امور اقتصادی و دارایی، پدافند غیر عامل، سازمان حفظ نباتات کشور، سازمان جنگل ها، مراتع و آبخیزداری، شهرداری تهران و ... اشاره نمود. لیست پروژه‌های انجام‌شده',style: Style.h4(),)

    ]);
  }

}