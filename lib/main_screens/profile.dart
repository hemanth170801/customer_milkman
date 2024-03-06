import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
              //  backgroundImage: AssetImage('assets/profile_image.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'Retailer name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              _buildIconButton('Profile', Icons.edit, () {
                Get.to(EditProfile());
              }),
              SizedBox(height: 20),
              _buildIconButton('Payment Settings', Icons.payment, () {
                Get.to(Payment());
              }),
              SizedBox(height: 20),
              _buildIconButton('Order History', Icons.history, () {
                Get.to(Orders());
              }),
              SizedBox(height: 20),
              _buildIconButton('Settings', Icons.settings, () {
                // Implement settings logic
              }),
              SizedBox(height: 20),
              _buildIconButton('Logout', Icons.logout, () {
                Get.to(Login());
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(String text, IconData icon, Function() onPressed) {
    return SizedBox(
      width: 200,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Text('Edit Profile Screen'),
      ),
    );
  }
}

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Settings'),
      ),
      body: Center(
        child: Text('Payment Settings Screen'),
      ),
    );
  }
}

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
      ),
      body: Center(
        child: Text('Order History Screen'),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Text('Login Screen'),
      ),
    );
  }
}
