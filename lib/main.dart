import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'core/utls/routers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/CreateAccount/cubit/logincubit/logincubut.dart';
import 'features/CreateAccount/cubit/registercubit/registercubit.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return  MultiBlocProvider(
            providers: [
              BlocProvider(create: (context)=>RegisterCubit(),),
              BlocProvider(create: (context)=>Login_Cubit(),),
            ],
            child: MaterialApp.router(
              routerConfig: AppRouters.router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
            ),
          );
        }
    );
  }
}

