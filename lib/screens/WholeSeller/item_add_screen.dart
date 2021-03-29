import 'package:flutter/material.dart';
import 'package:karobar/widgets/green_appbar.dart';

class ItemAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SearchBar(),
                SizedBox(
                  height: 20,
                ),
                GreenAppBar(
                  title: 'Items Added',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'WholeSeller Store   >',
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(0.8)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'QTY',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Total',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return ItemTile();
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Color(0xFF09b44d),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'ADD MORE ITEMS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Montserrat_Bold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ItemTile extends StatelessWidget {
  const ItemTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFf6f6f6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 60,
              child: Image.network(
                  'https://i.pinimg.com/originals/7f/cc/d4/7fccd4143a51812cfbcff26451e2a113.png'),
            ),
            Column(
              children: [
                Text(
                  'Moong Qalandri',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'A-Grade 25KG',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Text('3'),
            Text('RS 6750'),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
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
