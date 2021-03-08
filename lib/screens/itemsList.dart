import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBar(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFd0f1dd),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Grocery Items',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Explore More Categories >',
                  style: TextStyle(color: Colors.black.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 14,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFf6f6f6),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                    'https://www.freepnglogos.com/uploads/vegetables-png/fruit-and-vegetables-basket-png-20.png'),
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Vegetables',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xFFf6f6f6), borderRadius: BorderRadius.circular(25)),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
          prefixIcon: Icon(
            Icons.search,
            size: 22,
          ),
          contentPadding: EdgeInsets.all(11),
        ),
      ),
    );
  }
}
