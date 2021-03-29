import 'package:flutter/material.dart';
import 'package:karobar/widgets/green_appbar.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              GreenAppBar(
                title: 'Order History',
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return OrderHistoryTile();
                    },
                    separatorBuilder: (ctx, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrderHistoryTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFf6f6f6),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '21st July',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  '2 items',
                )
              ],
            ),
            Text(
              'RS 6500',
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
