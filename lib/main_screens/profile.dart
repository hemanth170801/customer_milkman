import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profile_image.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'Retailer name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Custom method to create a button with an icon
              _buildIconButton('Profile', Icons.edit, () {
               // Get.to(() => editprofile());
              }),
              SizedBox(height: 20),
              // Custom method to create a button with an icon
              _buildIconButton('Payment Settings', Icons.payment, () {
                //Get.to(() => payment());
              }),
              SizedBox(height: 20),
              _buildIconButton('Order History', Icons.history, () {
                //Get.to(() => orders());
              }),
              // SizedBox(height: 20),
              // _buildIconButton('Add new Product', Icons.add_box, () {
              //  // Get.to(() => newproduct());
              // }),
              SizedBox(height: 20),
              _buildIconButton('Settings', Icons.settings, () {
                // Implement settings logic
              }),
              SizedBox(height: 20),
              _buildIconButton('Logout', Icons.logout, () {
                //Get.to(() => Login());
              }),
            ],
          ),
        ),
      ),

    );
  }

  // Custom method to create a button with an icon
  Widget _buildIconButton(String text, IconData icon, Function onPressed) {
    return SizedBox(
      width: 200,
      child: ElevatedButton.icon(
        onPressed: onPressed as void Function()?,
        icon: Icon(icon),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}