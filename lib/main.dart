import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "applogin",
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
class LoginScreen extends StatelessWidget {
    const LoginScreen({super.key});
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
                  "assets/images/vocation.png",
                  fit: BoxFit.cover,
                ),
            ),
            Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.35),
                ),
            ),
            SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const SizedBox(height:30),
                        const Text(
                            "Booking Travel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Hãy cùng nhau khám phá thế giới",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 36),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(26),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFC8BA).withOpacity(0.92),
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 24,
                                offset: const Offset(0, 12),
                              ),
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Email hoặc Tên đăng nhập",
                                style: TextStyle(
                                  color: Color(0xFF8A3A22),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const LoginTextField(
                                hintText: "nguyenvan@example.com",
                                icon: Icons.person_outline,
                                obscureText: false,
                              ),

                              const SizedBox(height: 18),
                              const Text(
                                "Mật Khẩu",
                                style: TextStyle(
                                  color: Color(0xFF8A3A22),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 8),
                              const LoginTextField(
                                hintText: "********",
                                icon: Icons.lock_outline,
                                obscureText: true,
                                suffixIcon: Icons.visibility_outlined,
                              ),

                              const SizedBox(height: 8),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: null,
                                  child: const Text(
                                    "Quên mật khẩu?",
                                    style: TextStyle(
                                      color: Color(0xFFB33A18),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              // nut dang nhap
                              SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ElevatedButton.styleFrom(
                                    disabledBackgroundColor:
                                      const Color(0xFFB63B18),
                                    disabledForegroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  child: const Text(
                                    "Đăng Nhập",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              // chu hoac duong ke ngang
                              Row(
                                children: const[
                                  Expanded(child: Divider(color: Colors.grey)),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      child: Text(
                                          "Hoặc",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                  ),
                                  Expanded(child: Divider(color: Colors.grey)),
                                ],
                              ),

                              const SizedBox(height: 18),
                              // nut tiep tuc voi google
                              const SocialButton(
                                icon: Icons.g_mobiledata,
                                iconColor: Colors.red,
                                text: "Tiếp Tục Với Google",
                              ),

                              const SizedBox(height: 12),
                              // nut tiep tuc voi facebook
                              const SocialButton(
                                icon: Icons.facebook,
                                iconColor: Color(0xFF1877F2),
                                text: "Tiếp Tục Với Facebook",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 28),
                        // dong chu cuoi
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Chưa có tài khoản?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Đăng ký ngay",
                              style: TextStyle(
                                color: Color(0xFFFFB59E),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
            ),
          ],
        ),
      );
    }
}

// LoginTextField nay la dung chung
class LoginTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final IconData? suffixIcon;

  const LoginTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        filled: true,
        fillColor: Colors.white.withOpacity(0.95),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
// SocialButton nut dang nhap tach dung lai cho gg và fb
class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  const SocialButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.text,
});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton.icon(
          onPressed: null,
          icon: Icon(
            icon,
            color: iconColor,
            size: 26,
          ),

          label: Text(
            text,
            style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        style: OutlinedButton.styleFrom(
          disabledBackgroundColor: Colors.white.withOpacity(0.95),
          disabledForegroundColor: const Color(0xFF333333),
          side: BorderSide(
              color: Colors.grey.withOpacity(0.25),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}

