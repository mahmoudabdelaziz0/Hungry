import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_color.dart';
import '../../../shared/custom_text.dart';
import '../widgets/custtom_user_textField.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  final TextEditingController _email=TextEditingController();
  final TextEditingController _name=TextEditingController();
  final TextEditingController _address=TextEditingController();

  @override
  void initState() {
    _name.text='Tech Gear';
    _email.text='Tech Gear@gmail,com';
    _address.text='Hurghada,Egy';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(toolbarHeight: 30,scrolledUnderElevation: 0,backgroundColor:AppColors.primary,
      leading:
      GestureDetector(
          onTap: ()=>  Navigator.pop(context) ,
          child: Icon(Icons.arrow_back,color: Colors.white,)),


      actions: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SvgPicture.asset('assets/icons/settings.svg',width: 20,),
        )
      ],
      ),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: SingleChildScrollView(
    child: Column(
      children: [
        Center(
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(width:5 ,color: Colors.white),
              image:DecorationImage(image: NetworkImage('https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-photo-183042379.jpg')) ,
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade100
            ),
    
          ),
        ),
        Gap(30),
        CusttomUserTextfield(label: 'Name', controller: _name),
        Gap(20),
        CusttomUserTextfield(label: 'Email', controller: _email),
        Gap(25),
        CusttomUserTextfield(label: 'Address', controller: _address),
        Gap(25),
        Divider(),
        Gap(10),
    
        ListTile(
    
          contentPadding:EdgeInsets.symmetric(horizontal: 16,vertical: 0) ,
          shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(10)
          ),
          tileColor: Color(0xffF3F4F6),
          leading: Image.asset("assets/icons/visa.png"),
          title: CustomText(text: "Debit Card",color: Colors.black,),
          subtitle: CustomText(text: "**** **** 2353",color: Colors.black,),
          trailing: CustomText(text: 'Default',color: Colors.black,)
    
        ),
        Gap(400)
    
    
    
    
    
      ],
    ),
  ),
),

      bottomSheet: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              blurRadius: 20,


            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Edit Button
           Container(
             padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
             decoration: BoxDecoration(
               color: AppColors.primary,
               borderRadius: BorderRadius.circular(8)
             ),
             child: Row(
               children: [
                 CustomText(text: "Edit Profile",color: Colors.white,),
                 Gap(5),
                 Icon(CupertinoIcons.pencil,color: Colors.white,),

               ],
             ),
           ),
              ///logout
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                decoration: BoxDecoration(
                    color:Colors.white,
                    border: Border.all(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(8)
                ),
                child:Row(
                  children: [
                    CustomText(text: "Logout",color: AppColors.primary,weight: FontWeight.bold,),
                    Gap(5),
                    Icon(Icons.logout_sharp,color: AppColors.primary)
                  ],
                ),

              ),


            ],
          ),
        ),
      ),



    );
  }
}
