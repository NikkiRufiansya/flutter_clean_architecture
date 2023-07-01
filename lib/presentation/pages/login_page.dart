part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObsecured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Username"),
                maxLines: 1,
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(_isObsecured
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObsecured = !_isObsecured;
                        });
                      },
                    ),
                    border: const OutlineInputBorder(),
                    hintText: "Password"),
                obscureText: _isObsecured,
                maxLines: 1,
              ),
              const SizedBox(
                height: 8.0,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
