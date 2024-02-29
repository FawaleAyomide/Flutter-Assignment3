import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RegistrationPage(),
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: true,
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // create controller
  TextEditingController nameController = TextEditingController();
  TextEditingController businessNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          ),
          // align form to the center
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 0),
          width: double.infinity,
          height: 600.0,
          child: ListView(
            shrinkWrap: true,
            children: [
              const ListTile(
                title: Text('Lets Register Account', textAlign: TextAlign.left, style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, height: -.01,),),
              ),
              const ListTile(
                title: Text('Hello user, you have a greatful journey', textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name',
                ),
              ),
              // Spaces required
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: businessNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Business Name',
                ),
              ),
              // Spaces required
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Phone',
                ),
              ),
              // Spaces required
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
              // Spaces required
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              // Spaces required
              const SizedBox(
                height: 25,
              ),
              // create signup button 
              ElevatedButton(onPressed: () {
                // ignore: avoid_print
                print(nameController.text);
                // ignore: avoid_print
                print(businessNameController.text);
                // ignore: avoid_print
                print(phoneController.text);
                // ignore: avoid_print
                print(emailController.text);
                // ignore: avoid_print
                print(passwordController.text);
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: const EdgeInsets.all(21),
              ),
              child: const Text('Sign Up', style: 
              TextStyle(fontSize: 15, color: Colors.white,
              ),
              ), 
                
              ),
              // Spaces required
              const SizedBox(
                height: 15,
              ),

            
              Wrap(
                children: [
              const ListTile(
                title: Text('Already have an account?', textAlign: TextAlign.center, style: TextStyle(fontSize: 18,),),
              ),
              InkWell(
                onTap: () {},
                child: const Text('Login', style: TextStyle(
                  color: Colors.blue,
                ),
                ),
              )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
