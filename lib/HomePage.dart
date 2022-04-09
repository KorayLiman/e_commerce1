import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late Offset _offset;
  late AnimationController _animationController;
  // Animation _animation = Tween<int>(begin: )
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    func(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
          initialSelection: 1,
          tabs: [
            TabData(iconData: Icons.category, title: "Kategoriler"),
            TabData(iconData: Icons.home, title: "Anasayfa"),
            TabData(iconData: Icons.supervised_user_circle, title: "Hesap")
          ],
          onTabChangedListener: (index) {}),
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text(
          "E Commerce",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Kategori seçin",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const Text(
                  "Tümünü gör",
                  style: TextStyle(color: Colors.orange),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.phone_android,
                        color: Colors.white,
                      ),
                      radius: 32,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Akıllı Telefon")
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.laptop,
                        color: Colors.blue,
                      ),
                      radius: 32,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Bilgisayar")
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.medical_services,
                        color: Colors.blue,
                      ),
                      radius: 32,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Sağlık")
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.book,
                        color: Colors.blue,
                      ),
                      radius: 32,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Kitap")
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, top: 30),
                  child: Container(
                    height: 40,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          hintText: "Aramak istediğiniz ürün",
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0, right: 30),
                child: Icon(
                  Icons.category,
                  size: 28,
                  color: Colors.orange,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Container(
                height: 400,
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: [
                    AnimatedBuilder(
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, 30 * _animationController.value),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Image.network(
                                    "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/samsung/thumb/132721-1-1_large.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                    flex: 2,
                                    child: const Text("Samsung S22 Ultra"))
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        );
                      },
                      animation: _animationController,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Image.network(
                                "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-max-blue-select?wid=470&hei=556&fmt=png-alpha&.v=1645552346295"),
                          ),
                          Expanded(child: const Text("Iphone 13 Pro Max"))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    AnimatedBuilder(
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, 30 * _animationController.value),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Image.network(
                                    "https://bludiode.com/33897-large_default/oppo-reno-7-pro-12gb256gb-blue.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                    flex: 2,
                                    child: const Text("Samsung S22 Ultra"))
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        );
                      },
                      animation: _animationController,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Image.network(
                                "https://www.notebookcheck-tr.com/typo3temp/_processed_/5/a/csm_XiaomiMi11Pro_fa0b0f782f.jpg",
                                fit: BoxFit.contain),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              "Xiamo Mi 11 Pro",
                            ),
                          ))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

void func(AnimationController _animationController) async {
  Future.delayed(Duration(seconds: 2), () => _animationController.forward());
}
