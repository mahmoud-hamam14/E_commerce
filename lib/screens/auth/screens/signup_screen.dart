import 'package:e_commerce/screens/auth/screens/login_screen.dart';
import 'package:e_commerce/screens/auth/widgets/auth_footer.dart';
import 'package:e_commerce/screens/auth/widgets/coustom_bottom.dart';
import 'package:e_commerce/screens/auth/widgets/custom_text_from_field.dart';
import 'package:e_commerce/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                'Create Account',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),

              const Text(
                'Join NOVA today',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6B7280),
                ),
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: CustomTextFromField(
                      label: 'First Name',
                      hintText: 'John',
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: CustomTextFromField(
                      label: 'Last Name',
                      hintText: 'Doe',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              //* TextField
              CustomTextFromField(label: 'Email', hintText: 'alex@example.com'),

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

              CustomTextFromField(
                label: 'Confirm Password',
                hintText: '••••••••',
                obscureText: true,
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                  size: 20,
                  color: Color(0xFF64748B),
                ),
              ),

              SizedBox(height: 30),

              CoustomBottom(
                title: 'Create Account',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),

              const SizedBox(height: 50),

              Center(
                child: AuthFooter(
                  text: "Don't have an account? ",
                  actionText: 'Sign up',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
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
