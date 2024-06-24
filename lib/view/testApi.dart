import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controller/controller.dart';
import 'package:test2/view/data_view.dart';

class TestApi extends StatelessWidget {
  const TestApi({super.key});

  @override
  Widget build(BuildContext context) {
    DataController dbController = Get.put(DataController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Fetch API From Server"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Obx(() {
          var data = dbController.data;
          if (dbController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
              itemCount: dbController.data.length,
              itemBuilder: (context, i) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(),
                            color: const Color.fromARGB(255, 108, 20, 123)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    data[i].id,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        data[i].name,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        data[i].email,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        data[i].mobile,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Get.to(DataView(
                                          isEdit: true,
                                          id: data[i].id,
                                          name: data[i].name,
                                          email: data[i].email,
                                          mobile: data[i].mobile,
                                        ));
                                      },
                                      icon: const Icon(
                                        Icons.edit_document,
                                        size: 35,
                                        color: Colors.green,
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        dbController.deleteApi(data[i].id);
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        size: 35,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )));
              });
        }),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Get.to(() => const DataView(
                  isEdit: false,
                ));
          },
          child: const Text("ADD")),
    );
  }
}
