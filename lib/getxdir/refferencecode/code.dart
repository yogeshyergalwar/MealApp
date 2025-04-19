/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app_dice/getx/getxmode.dart';


void main() {
  runApp(
    MaterialApp(
      home: DemoMilCompaniLayouts1(),
    ),
  );
}

class DemoMilCompaniLayouts1 extends StatelessWidget {
  final HomescreenController controller = Get.put(HomescreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DemoLayouts"),
      ),
      body: GetBuilder<HomescreenController>(
        builder: (_) {
          */
/* if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }*//*


          if (controller.errorMessage.value.isNotEmpty) {
            return Center(child: Text(controller.errorMessage.value));
          }

          return ListView(
            children: [
              ListTile(
                title: Text("Page: ${controller.homescreenModel.value?.page}"),
                subtitle: Text("Per Page: ${controller.homescreenModel.value?.perPage}"),
              ),
              ListTile(
                title: Text("Total: ${controller.homescreenModel.value?.total}"),
                subtitle: Text("Total Pages: ${controller.homescreenModel.value?.totalPages}"),
              ),
              ...controller.homescreenModel.value?.data?.map((data) {
                return ListTile(
                  leading: Image.network(data.avatar!),
                  title: Text("${data.firstName} ${data.lastName}"),
                  subtitle: Text(data.email!),
                );
              }) ?? [],
              ListTile(
                title: Text("Support URL: ${controller.homescreenModel.value?.support?.url}"),
                subtitle: Text("Support Text: ${controller.homescreenModel.value?.support?.text}"),
              ),
              TextButton(
                onPressed: () {
                  controller.fetchData(); // Fetch next page data
                },
                child: const Text('NextPage'),
              ),
            ],
          );
        },
      ),
    );
  }
}

*/
////modelfile
// homescreen_controller.dart
/*import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practice_app_dice/getx/model/classmode.dart';



class HomescreenController extends GetxController {
  var homescreenModel = Rx<HomescreenModelFile1?>(null);
  var isLoading = true.obs;
  var errorMessage = ''.obs;

  Future<void> fetchData() async {
    String url = 'https://reqres.in/api/users?page=2';
    isLoading.value = true;

    try {
      final response = await http.get(Uri.parse(url));
      print('Response Body: ${response.body}'); // Add this line to inspect the raw response

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = json.decode(response.body);
        homescreenModel.value = HomescreenModelFile1.fromJson(jsonData);
      } else {
        errorMessage.value = 'Failed to load data';
      }
    } catch (e) {
      errorMessage.value = 'Error fetching data: $e';
    } finally {
      isLoading.value = false;
    }
  }

}*/
///model
/*
class HomescreenModelFile1 {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Data>? data;
  Support? support;

  HomescreenModelFile1(
      {this.page, this.perPage, this.total, this.totalPages, this.data, this.support});

  HomescreenModelFile1.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    support = json['support'] != null ? Support.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    data['per_page'] = perPage;
    data['total'] = total;
    data['total_pages'] = totalPages;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (support != null) {
      data['support'] = support!.toJson();
    }
    return data;
  }
}
class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['avatar'] = avatar;
    return data;
  }
}
class Support {
  String? url;
  String? text;

  Support({this.url, this.text});

  Support.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['text'] = text;
    return data;
  }
}*/
