import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:weatther_station/home/widgets/weatherdata_ui.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String photo = "";
  final user = FirebaseAuth.instance.currentUser;
  Query databaseRef = FirebaseDatabase.instance
      .ref()
      .child("/users/${FirebaseAuth.instance.currentUser!.uid}/WeatherData");

  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 238, 238, 238),
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 251, 248, 248),
              title: const Text(
                "Weather Station",
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                IconButton(
                    onPressed: signOut,
                    icon: const Icon(
                      Icons.logout_sharp,
                      color: Colors.black,
                    ))
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Signed in as: ${user?.email}\nUID is:${user?.uid}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                    ),

                    const Text(
                      "Real Time Weather Data",
                      style: TextStyle(fontSize: 30),
                    ),
                    // SizedBox(
                    //   height: 100,
                    //   width: 100,
                    //   child: Image.network(user!.photoURL!),
                    // ),
                    SizedBox(
                      height: 600,
                      width: 400,
                      child: FirebaseAnimatedList(
                          query: databaseRef,
                          padding: const EdgeInsets.all(5),
                          itemBuilder: (BuildContext context,
                              DataSnapshot snapshot,
                              Animation<double> animation,
                              int index) {
                            Map weatherData = snapshot.value as Map;
                            //   weatherData['key'] = snapshot.key;
                            // print(weatherData.runtimeType);

                            return WeatherDataUI(weatherData: weatherData);
                          }),
                    ),
                  ],
                ),
              ),
            )));
  }
}
