import 'package:flutter/material.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/social_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: const BorderSide(color: Colors.grey),
                      ),
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Hello! Register to get started',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    AuthTextField(controller: _username, hint: 'Username'),
                    const SizedBox(height: 12),
                    AuthTextField(
                      controller: _email,
                      hint: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 12),
                    AuthTextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _password,
                      hint: 'Password',
                      obscure: true,
                    ),
                    const SizedBox(height: 12),
                    AuthTextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _confirm,
                      hint: 'Confirm password',
                      obscure: true,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Register',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.grey[400], thickness: 1),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Or Register with',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(color: Colors.grey[400], thickness: 1),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialButton(
                          icon: Icons.facebook,
                          color: Colors.blue[800]!,
                        ),
                        const SizedBox(width: 12),
                        SocialButton(
                          icon: Icons.g_mobiledata,
                          color: Colors.redAccent,
                        ),
                        const SizedBox(width: 12),
                        SocialButton(icon: Icons.apple, color: Colors.black),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/login'),
                      child: const Text(
                        'Login Now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
