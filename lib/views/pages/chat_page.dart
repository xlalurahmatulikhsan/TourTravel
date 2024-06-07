import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing/shared/theme/theme.dart';
import 'package:slicing/views/pages/home_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: whiteColor1,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                Get.to(() => Home());
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
          ),
          title: Text(
            'Inbox',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
          ),
          bottom: TabBar(
            labelColor: primaryColor,
            labelStyle: greenTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 12,
            ),
            unselectedLabelColor: greyColor,
            unselectedLabelStyle: greyTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 14,
            ),
            indicatorColor: primaryColor,
            tabs: const [
              Tab(text: 'Notifikasi'),
              Tab(text: 'Chat'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('data', style: blackTextStyle),
            ),
            Center(
              child: Text('data2', style: blackTextStyle),
            ),
          ],
        ),
      ),
    );
  }
}
