import 'package:flutter/material.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coliseo3.jpg'), // replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to",
                style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Padel",
                style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              const Text(
                "The only app you need to follow your favorite teams, players, and matches",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 20.0,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                  },
                  child: const Text('Get started'),
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),


        ),
      ),
    );
  }
}
