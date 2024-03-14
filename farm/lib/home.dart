// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:farm/vegetable/bhendi/bhendi.dart';
import 'package:flutter/material.dart';
import 'package:farm/vegetable/tamato/tamato.dart';
// import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() => _HomePage();
}

class _HomePage extends State {
  // int activeIndex = 0;
  // final urlImages = [
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXq6L92NPX8eQrR07SsP_xgn68JnYcL1gd_Q&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhmz1R5M1CRlxdQef8SqHhlBt3s5fxR-NelQ&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjSqepRK0BNpuI0Xu8V0pDxRF4sxkkAIgFCQ&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI-Ts58nxAYhCz0zxcqWmoWcNtWq8UqSg-0A&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKsaEnyKvMkF7hBEzHqQfj79GbOBtVjtuHPA&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsSMmlasmwCsDM7CuGbdYO4QTG5SAaVotbRA&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG91UuKUzJUyX-pPyefbGIFmzFJFiJ_MFqEA&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVNzNNAPkRUFfp7vpFllQm8ccGxJOqeElSfA&usqp=CAU",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Information of Daily Foods",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          const Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.settings),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Setting"),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.share),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Share"),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.info),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Info"),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
        backgroundColor: const Color.fromARGB(255, 63, 169, 67),
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              // First Row Vegetables
              const Text(
                "Vegetable's",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          // CarouselSlider.builder(
                          //   options: CarouselOptions(
                          //     height: 300,
                          //     // viewportFraction: 1,
                          //     autoPlay: true,
                          //     reverse: true,
                          //     autoPlayInterval: const Duration(
                          //       seconds: 2,
                          //     ),
                          //     onPageChanged: (index, reason) =>
                          //         setState(() => activeIndex = index),
                          //     // pageSnapping: false,
                          //     // enlargeCenterPage: true,
                          //     // enlargeStrategy: CenterPageEnlargeStrategy.height,
                          //   ),
                          //   itemCount: urlImages.length,
                          //   itemBuilder: (context, index, realIndex) {
                          //     final urlImage = urlImages[index];

                          //     return buildImage(urlImage, index);
                          //   },
                          // ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Tamato(),
                                  ),
                                );
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              // color: Colors.grey,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/image3.png",
                                  ),
                                  // opacity: 0.3,
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 179, 176, 176),
                                      offset: Offset(10, 10),
                                      blurRadius: 8),
                                ],
                              ),
                              child: const Text(
                                "Tamato",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Ladyfinger(),
                                  ),
                                );
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              // color: Colors.grey,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/bhendi.png",
                                  ),
                                  // opacity: 0.3,
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 187, 184, 184),
                                      offset: Offset(10, 10),
                                      blurRadius: 8),
                                ],
                              ),
                              child: const Text(
                                "Ladyfinger",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/image.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/gobhi.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/mashroom.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Fruits Second Row
              const Text(
                "Fruits",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/image.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/banana.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/bit.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/mango.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/stwabbery.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Daily Foods 3rd Row
              const Text(
                "Daily Foods",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/pulses/pulses.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/pulses/rice.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/bit.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/mango.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/stwabbery.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Daily Foods 4 Row
              const Text(
                "Daily Foods",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/pulses/pulses.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/pulses/rice.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/bit.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/mango.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/stwabbery.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Daily Foods 5th Row
              const Text(
                "Daily Foods",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/pulses/pulses.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/pulses/rice.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/bit.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/mango.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 150,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/stwabbery.png",
                          ),
                          // opacity: 0.3,
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 187, 184, 184),
                              offset: Offset(10, 10),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildImage(String urlImage, int index) => Container(
  //       margin: const EdgeInsets.symmetric(
  //         horizontal: 10,
  //       ),
  //       // color: Colors.grey,
  //       child: Image.network(
  //         urlImage,
  //         fit: BoxFit.cover,
  //         width: 400,
  //       ),
  // );
}
