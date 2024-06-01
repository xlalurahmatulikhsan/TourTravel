import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slicing/Page/package/order.dart';
import 'package:slicing/controller/controller.dart';
import 'package:slicing/widgets/theme/theme.dart';

class Order extends StatelessWidget {
  final PackageController controller = Get.put(PackageController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: whiteColor1,
        appBar: AppBar(
          backgroundColor: whiteColor1,
          elevation: 0,
          title: Text(
            'Your Order',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
          ),
          bottom: TabBar(
            labelColor: primaryColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: primaryColor,
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Content for each tab
            _buildPendingOrders(),
            _buildCompletedOrders(),
          ],
        ),
      ),
    );
  }

  Widget _buildPendingOrders() {
    return SingleChildScrollView(
      child: Obx(() {
        final item = controller.paketGiliTerawangan[0];
        final item2 = controller.destinasi[0];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: MyOrder(
                  image: item2.image,
                  paket: item.paket,
                  jumlahPaket: item.quantity.value,
                  keterangan: 'Tour saja',
                  tanggalPesan: '24 mei'),
            ),
          ],
        );
      }),
    );
  }

  Widget _buildCompletedOrders() {
    return Center(
      child: Text(
        'Completed Orders',
        style: blackTextStyle.copyWith(fontSize: 16),
      ),
    );
  }
}
