import 'package:flutter/material.dart';

class OrdersList extends StatefulWidget {
  @override
  _OrdersListState createState() => _OrdersListState();
}

class _OrdersListState extends State<OrdersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ScreenName(),
              SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    'Your Order will be delivered on Tuesday',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '15 December.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return OrderTile();
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color(0xFF09b44d),
                thickness: 3,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Bill',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'RS 28,024',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                    'CONFIRM THE ORDER',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Montserrat_Bold',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderTile extends StatelessWidget {
  const OrderTile({
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
                  'https://www.freepnglogos.com/uploads/vegetables-png/fruit-and-vegetables-basket-png-20.png'),
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

class ScreenName extends StatelessWidget {
  const ScreenName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          'Orders List',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
    );
  }
}
