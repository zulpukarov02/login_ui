import 'package:flutter/material.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreanState createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 199, 194),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/76816147.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don`t have an account? ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.brown),
              ),
              Text(
                "SIGN UP",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.brown[900]),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: CustomButton(
                      color: Colors.white,
                      icon: Icon(Icons.man),
                      text: 'Email',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.brown,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 320,
                  height: 50,
                  child: CustomButton(
                    color: Colors.white,
                    icon: Icon(Icons.lock),
                    text: 'Password',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.brown,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        "Forgot Passwords",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.brown,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 120, vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.brown)),
                        onPressed: () {},
                        child: const Text(
                          "SIGN IN",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 35,
                child: CustomButton(
                  text: "Sign In",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                  ),
                  icon: Icon(
                    Icons.apple_outlined,
                    color: Colors.white,
                  ),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 35,
                child: CustomButton(
                  text: "Sign In",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                  ),
                  icon: Icon(
                    Icons.g_mobiledata_rounded,
                    color: Color.fromARGB(255, 4, 62, 91),
                  ),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 35,
                child: CustomButton(
                  text: "Sign In",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                  ),
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    this.style,
  });
  final String text;
  final Icon icon;
  final Color color;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Row(children: [
        const SizedBox(width: 20),
        icon,
        const SizedBox(width: 20),
        Text(
          text,
          style: style,
        ),
        const SizedBox(width: 15)
      ]),
    );
  }
}
