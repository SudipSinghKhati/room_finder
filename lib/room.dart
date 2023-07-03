import 'package:flutter/material.dart';

class RoomView extends StatefulWidget {
  const RoomView({super.key});

  @override
  State<RoomView> createState() => _RoomViewState();
}

class _RoomViewState extends State<RoomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('rooms'),
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: 15,
          itemBuilder: (context, builder) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 12,
              shadowColor: const Color.fromARGB(255, 211, 199, 199),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.pink,
                      margin: const EdgeInsets.all(10),
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/1212417063/photo/table-full-of-food-for-family-dinner.jpg?s=612x612&w=0&k=20&c=VQw95DggeCDG_NHy5wHcg8BV7MhQmDDtLr-qxs4suiY='),
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'ABC Restaurant',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: const Icon(Icons.location_on),
                                  contentPadding: const EdgeInsets.all(0),
                                  title: Transform(
                                    transform: Matrix4.translationValues(
                                        -28, 0.0, 0.0),
                                    child: const Text(
                                      'xyz location',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  leading: const Icon(Icons.call),
                                  contentPadding: const EdgeInsets.all(0),
                                  title: Transform(
                                    transform: Matrix4.translationValues(
                                        -28, 0.0, 0.0),
                                    child: const Text(
                                      '9812345678',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  leading: Wrap(
                                    children: [
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star_half),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  leading: const Icon(Icons.message),
                                  contentPadding: const EdgeInsets.all(0),
                                  title: Transform(
                                    transform: Matrix4.translationValues(
                                        -28, 0.0, 0.0),
                                    child: const Text(
                                      '237 Reviews',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.transparent,
              height: 30,
            );
          },
        ),
      ),
    );
  }
}
