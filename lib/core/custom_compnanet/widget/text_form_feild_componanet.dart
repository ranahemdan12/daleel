import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/resources/colors_maneger.dart';
import '../../shared/resources/strings_manger.dart';
import '../../shared/resources/values_manager.dart';

class TextFormFieldReusable extends StatelessWidget {

  bool enableForgetPassword ;
  String hintText ;
  TextInputType keyboardType ;
  bool obsecurePassword ;
  TextEditingController textEditingController;
  void Function()? suffixPressed;
  void Function()? prefixPressed;
  bool isPhone ;
  CountryCode? valueOfCountry ;
  final String? Function(String?)? validate;
  final Widget? suffix ;
  bool readOnly ;
  double bottom ;
  String? prefixImage;
  bool isMedia;
  bool isMaxLine;
  void Function(String?)? onChanged;


  TextFormFieldReusable({Key? key,this.onChanged,
    this.enableForgetPassword = false,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    required this.textEditingController,
    this.obsecurePassword = false,
    this.suffixPressed,
    this.isMedia=false,
    this.prefixPressed,
    this.isPhone = false,
    this.prefixImage='',
    this.isMaxLine=false,
    this.valueOfCountry,required this.validate,this.suffix,this.readOnly = false,
    this.bottom = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  REdgeInsets.only(right: 4.w,top: 4.h,left: 4.w,
        bottom:bottom == 0 ? enableForgetPassword ? .4 : 2.4: bottom),
    child: TextFormField(onChanged: onChanged,
    validator: validate,
    maxLines:isMaxLine?3:1,
    readOnly:readOnly ,
    keyboardType: keyboardType,
    controller: textEditingController,
    obscureText: obsecurePassword,
    decoration: InputDecoration(
    filled: true,
    fillColor: ColorsManager.white,
    hintText: hintText,
    suffixIcon:enableForgetPassword ?
    InkWell(
    onTap:suffix == null ? suffixPressed : (){} ,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    suffix == null ?   Text(
    obsecurePassword ? StringsManager.show :  StringsManager.hide,
    style:Theme.of(context).textTheme.bodyLarge!.copyWith(
    color: ColorsManager.green,
    fontSize: AppSize.s13.sp
    ) ,) : suffix!
    ],
    ),
    ) : null,
    prefixIcon:
    isPhone?
    CountryCodePicker(

    builder: (country){
    return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
    SizedBox(
    width:AppSize.s20.w,
    ),
    Image.asset(
    country!.flagUri!,
    package: 'country_code_picker',
    width: AppSize.s16.w,
    height: AppSize.s16.h,
    ),
    Padding(
    padding:  REdgeInsets.only(
    right: AppPadding.p8,
    left: AppPadding.p4
    ),
    child: SvgPicture.asset(AssetManageer.arrowDown),
    ),
    Container(
    width: AppSize.s1.w,
    height: AppSize.s24.h,
    color: ColorsManager.grey,
    ),
    Padding(
    padding:  REdgeInsets.symmetric(
    horizontal: AppPadding.p8),
    child: Text(country.dialCode!),
    ),


    ],
    );
    },

    onChanged: (value)  {
    valueOfCountry = value ;
    //context.read<RegisterCubit>().valueOfCountry = value ;
    print(value);
    },
    initialSelection: StringsManager.countryCode,
    favorite:  [StringsManager.code,StringsManager.countryCode],
    searchStyle: TextStyle(fontSize: 10.sp, color: Colors.black),
