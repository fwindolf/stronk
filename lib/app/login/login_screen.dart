import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          // EmailPasswordSection(),
          // PhoneSignInSection(),
          // AnonymousSignInSection(),
          Center(child: Text("This is a placeholder for the login screen")),
        ],
      ),
    );
  }
}

// class EmailPasswordSection extends HookConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//     final emailController = useTextEditingController(text: "");
//     final passwordController = useTextEditingController(text: "");

//     final authContoller = ref.read(authControllerProvider.notifier);

//     return Form(
//         key: _formKey,
//         child: Card(
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   alignment: Alignment.center,
//                   child: const Text(
//                     'Sign in with email and password',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 TextFormField(
//                   controller: emailController,
//                   decoration: const InputDecoration(labelText: 'Email'),
//                   validator: (String? value) {
//                     if (value?.isEmpty ?? false) {
//                       return 'Please enter an email address';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: passwordController,
//                   decoration: const InputDecoration(labelText: 'Password'),
//                   validator: (String? value) {
//                     if (value?.isEmpty ?? false) {
//                       return 'Please enter an email address';
//                     }
//                     return null;
//                   },
//                   obscureText: true,
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(top: 16),
//                   alignment: Alignment.center,
//                   child: SignInButton(
//                     Buttons.Email,
//                     text: 'Sign In',
//                     onPressed: () async {
//                       if (_formKey.currentState?.validate() ?? false) {
//                         try {
//                           authContoller.createWithEmailAndPassword(
//                             email: emailController.text,
//                             password: passwordController.text,
//                           );

//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                             content: Text("${user.email} signed in"),
//                           ));
//                         } on AuthenticationException catch (e) {
//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                             content: Text(e.message.toString()),
//                           ));
//                         }
//                       }
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
