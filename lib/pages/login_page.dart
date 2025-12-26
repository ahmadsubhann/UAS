import 'package:flutter/material.dart';
import 'package:lms_app/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF2C3E50),
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/free-vector/modern-office-desk-concept-with-flat-design_23-2147983002.jpg',
            ),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 400,
                minWidth: 300,
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 40),
                  
                  // Circular Outer Frame for Logo (as seen in image)
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1.5),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.school,
                        size: 50,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Heading text from image
                  const Text(
                    'Login ke akun Anda',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF444444),
                    ),
                  ),
                  const SizedBox(height: 32),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        // Email Input
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email, color: Color(0xFF777777), size: 24),
                            hintText: 'Email',
                            hintStyle: const TextStyle(color: Color(0xFFAAAAAA), fontSize: 16),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFEEEEEE), width: 2),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Password Input
                        TextField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock, color: Color(0xFF777777), size: 24),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText ? Icons.visibility : Icons.visibility_off,
                                color: const Color(0xFF999999),
                                size: 22,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Color(0xFFAAAAAA), fontSize: 16),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFEEEEEE), width: 2),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Remember Me & Forgot Password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Theme(
                                  data: ThemeData(unselectedWidgetColor: const Color(0xFFDDDDDD)),
                                  child: Checkbox(
                                    value: _rememberMe,
                                    activeColor: Colors.blue,
                                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    onChanged: (val) {
                                      setState(() {
                                        _rememberMe = val ?? false;
                                      });
                                    },
                                  ),
                                ),
                                const Text(
                                  'Biarkan tetap masuk',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Lupa Password?',
                                style: TextStyle(fontSize: 14, color: Colors.blueAccent),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // Login Button
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const MainPage(),
                                ),
                                (Route<dynamic> route) => false,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF337AB7),
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Register Button
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFDCDCDC),
                              foregroundColor: const Color(0xFF666666),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            child: const Text(
                              'Register',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Divider
                        Row(
                          children: [
                            const Expanded(child: Divider(color: Color(0xFFEEEEEE), thickness: 2)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'atau',
                                style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                              ),
                            ),
                            const Expanded(child: Divider(color: Color(0xFFEEEEEE), thickness: 2)),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // Social Logins (Matching Image exactly)
                        _socialButton(
                          iconContent: const Text(
                            'f',
                            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          label: 'Login dengan Facebook',
                          color: const Color(0xFF3B5998),
                        ),
                        const SizedBox(height: 10),
                        _socialButton(
                          iconContent: const Text(
                            'G',
                            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          label: 'Login dengan Google',
                          color: const Color(0xFFFF0000),
                        ),
                        const SizedBox(height: 10),
                        _socialButton(
                          iconContent: const Text(
                            'Y',
                            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          label: 'Login dengan Yahoo',
                          color: const Color(0xFF800080),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButton({
    required Widget iconContent,
    required String label,
    required Color color,
  }) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 54,
            child: Center(child: iconContent),
          ),
          Container(
            width: 1,
            height: 28,
            color: Colors.white.withOpacity(0.3),
          ),
          Expanded(
            child: Center(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          const SizedBox(width: 54),
        ],
      ),
    );
  }
}


