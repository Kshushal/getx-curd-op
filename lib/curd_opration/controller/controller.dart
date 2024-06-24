import 'dart:convert';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:test2/curd_opration/model/model.dart';

class DataController extends GetxController {
  String url = "https://66795dc918a459f6394f70b2.mockapi.io/apiWork";

  var data = <FetchModel>[].obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getApi();
  }

  Future<void> getApi() async {
    var fetchRes = Uri.parse(url);
    try {
      isLoading(true);

      var res = await http.get(fetchRes);

      if (res.statusCode == 200) {
        List<dynamic> decodedData = jsonDecode(res.body);
        List<FetchModel> fetchedData =
            decodedData.map((json) => FetchModel.fromJson(json)).toList();
        data.assignAll(fetchedData);
      }
    } catch (e) {
      print("Error for fetching data $e");
    } finally {
      isLoading(false);
    }
  }

  Future<void> postApi(String name, String email, String mobile) async {
    var fetchRes = Uri.parse(url);
    try {
      isLoading(true);

      var res = await http.post(fetchRes,
          headers: {'Content-type': 'application/json'},
          body: json.encode({
            'name': name,
            'email': email,
            'mobile': mobile,
          }));

      if (res.statusCode == 201) {
        getApi();
      }
    } catch (e) {
      print("Error for posting data $e");
    } finally {
      isLoading(false);
    }
  }

  Future<void> updateApi(
      String id, String name, String email, String mobile) async {
    var fetchRes = Uri.parse("$url/$id");
    try {
      isLoading(true);

      var res = await http.put(fetchRes,
          headers: {'Content-type': 'application/json'},
          body: json.encode({
            'name': name,
            'email': email,
            'mobile': mobile,
          }));

      if (res.statusCode == 200) {
        var index = data.indexWhere((item) => item.id == id);
        if (index != -1) {
          data[index] =
              FetchModel(id: id, name: name, email: email, mobile: mobile);
        }
      }
    } catch (e) {
      print("Error for updating data $e");
    } finally {
      isLoading(false);
    }
  }

  Future<void> deleteApi(String id) async {
    var fetchRes = Uri.parse("$url/$id");
    try {
      isLoading(true);

      var res = await http.delete(fetchRes);

      if (res.statusCode == 200) {
        data.removeWhere((item) => item.id == id);
        print("Data deleted successfully");
      }
    } catch (e) {
      print("Error for deleting data $e");
    } finally {
      isLoading(false);
    }
  }
}
