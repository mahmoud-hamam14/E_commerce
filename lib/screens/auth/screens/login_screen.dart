import 'package:e_commerce/screens/auth/screens/signup_screen.dart';
import 'package:e_commerce/screens/auth/widgets/auth_footer.dart';
import 'package:e_commerce/screens/auth/widgets/coustom_bottom.dart';
import 'package:e_commerce/screens/auth/widgets/custom_text_from_field.dart';
import 'package:e_commerce/screens/auth/widgets/social_button.dart';
import 'package:e_commerce/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/Background.png', width: 40, height: 40),

                  const SizedBox(width: 10),

                  const Text(
                    'NOVA',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              //* Header
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),

              const Text(
                'Welcome back to NOVA',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6B7280),
                ),
              ),

              const SizedBox(height: 30),

              //* TextField
              CustomTextFromField(
                label: 'Username or Email',
                hintText: 'Enter your username or email',
              ),

              const SizedBox(height: 10),

              CustomTextFromField(
                label: 'Password',
                hintText: '••••••••',
                obscureText: true,
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                  size: 20,
                  color: Color(0xFF64748B),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Checkbox(
                    value: isActive,
                    onChanged: (value) {
                      setState(() {
                        isActive = value!;
                      });
                    },
                  ),

                  TextButton(
                    onPressed: () {
                      setState(() {
                        isActive = !isActive;
                      });
                    },
                    child: const Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  ),

                  const Spacer(),

                  const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              CoustomBottom(
                title: 'Login',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),

              const SizedBox(height: 30),

              Row(
                children: const [
                  Expanded(
                    child: Divider(color: Color(0xFFD1D5DB), thickness: 1),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or continue with',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Divider(color: Color(0xFFD1D5DB), thickness: 1),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  SocialButton(
                    title: 'Google',
                    icon: 'assets/google.svg',
                    onTap: () {},
                  ),

                  const SizedBox(width: 18),
                  SocialButton(
                    title: 'Apple',
                    icon: 'assets/appel.svg',
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 50),

              Center(
                child: AuthFooter(
                  text: "Don't have an account? ",
                  actionText: 'Create account',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SignupScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
