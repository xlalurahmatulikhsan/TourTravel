import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:slicing/widgets/controller/counter.dart';
import 'package:slicing/widgets/controller/controller.dart';

class Test extends StatelessWidget {
  final PackageController controller = Get.put(PackageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return DraggableScrollableSheet(
                  expand: false,
                  builder: (context, scrollController) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Obx(() {
                              return ListView.builder(
                                controller: scrollController,
                                itemCount:
                                    controller.paketGiliTerawangan.length,
                                itemBuilder: (context, index) {
                                  final item =
                                      controller.paketGiliTerawangan[index];
                                  return ListTile(
                                    title: Text(item.paketan),
                                    subtitle: Text(
                                        'Price: \$${item.price.toStringAsFixed(2)}'),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.remove),
                                          onPressed: () => controller
                                              .decrementQuantityA(item),
                                        ),
                                        Obx(() => Text('${item.quantity}',
                                            style: TextStyle(fontSize: 20))),
                                        IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: () => controller
                                              .incrementQuantityA(item),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }),
                          ),
                          Obx(() {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Total: \$${controller.totalA.value.toStringAsFixed(2)}',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            );
                          }),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
          child: Text('Show Cart'),
        ),
      ),
    );
  }
}
