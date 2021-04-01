import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karobar/widgets/green_appbar.dart';
import 'package:karobar/widgets/image_input.dart';

class NewItemScreen extends StatelessWidget {
  static const route = '/NewItemScreen';
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
                SizedBox(
                  height: 20,
                ),
                GreenAppBar(
                  title: 'ADD MORE ITEMS',
                ),
                SizedBox(
                  height: 20,
                ),
                ConfigureNewItem()
              ],
            ),
          ),
        ));
  }
}

class ConfigureNewItem extends StatefulWidget {
  @override
  _ConfigureNewItemState createState() => _ConfigureNewItemState();
}

class _ConfigureNewItemState extends State<ConfigureNewItem> {
  String selectedCategory = 'Drinks';
  String selectedSubCategory = 'Wool';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.78,
      decoration: BoxDecoration(
        color: Color(0xFFf6f6f6),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Category',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Container(
                  height: 40,
                  //width: 120,
                  padding: EdgeInsets.only(left: 8, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: DropdownButton(
                      hint: Text('Select Category'),
                      value: selectedCategory,
                      underline: Container(),
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedCategory = value;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          child: Text('Cloths'),
                          value: 'Cloths',
                        ),
                        DropdownMenuItem(
                          child: Text('Electronics'),
                          value: 'Electronics',
                        ),
                        DropdownMenuItem(
                          child: Text('Drinks'),
                          value: 'Drinks',
                        )
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Sub-Category',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Container(
                  height: 40,
                  //width: 120,
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: DropdownButton(
                      hint: Text('Select Category'),
                      value: selectedSubCategory,
                      underline: Container(),
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedSubCategory = value;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          child: Text('Wool'),
                          value: 'Wool',
                        ),
                        DropdownMenuItem(
                          child: Text('Cotton'),
                          value: 'cotton',
                        ),
                        DropdownMenuItem(
                          child: Text('Wash'),
                          value: 'wash',
                        )
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Name of Product',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              fontSize: 12,
                            )),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  'Quantity',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 90,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Quantity',
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 120,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Price',
                          hintStyle: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Add Images',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            ImageInput(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xFF09b44d),
                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'ADD ITEM',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Montserrat_Bold',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
