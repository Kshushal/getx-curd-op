// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:test2/controller.dart';

// class DataView extends StatelessWidget {
//   final bool isEdit;
//   final String? id;
//   final String? name;
//   final String? email;
//   final String? mobile;

//   const DataView(
//       {super.key,
//       required this.isEdit,
//       this.id,
//       this.name,
//       this.email,
//       this.mobile});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController nameController = TextEditingController(
//       text: isEdit ? name : '',
//     );
//     TextEditingController emailController = TextEditingController(
//       text: isEdit ? email : '',
//     );
//     TextEditingController mobController = TextEditingController(
//       text: isEdit ? mobile : '',
//     );
//     DataController dbController = Get.find<DataController>();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: const InputDecoration(border: OutlineInputBorder()),
//                 controller: nameController,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: const InputDecoration(border: OutlineInputBorder()),
//                 controller: emailController,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: const InputDecoration(border: OutlineInputBorder()),
//                 controller: mobController,
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   if (isEdit) {
//                     dbController.updateApi(
//                       id!,
//                       nameController.text,
//                       emailController.text,
//                       mobController.text,
//                     );
//                   } else {
//                     dbController.postApi(
//                       nameController.text,
//                       emailController.text,
//                       mobController.text,
//                     );
//                   }
//                   Get.back();
//                   nameController.clear();
//                   emailController.clear();
//                   mobController.clear();
//                 },
//                 child: const Text("Submit"))
//           ],
//         ),
//       ),
//     );
//   }
// }
