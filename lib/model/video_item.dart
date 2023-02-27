import 'dart:math';

import 'package:cook_books/api/client_mapping.dart';
import 'package:cook_books/api/swagger.models.swagger.dart';
import 'package:cook_books/model/category_item.dart';

// List<ModelsLecture> lsLectures = List.generate(
//     56,
//     (index) => ModelsLecture(
//         id: index + 1,
//         author: ModelsAuthor(
//             id: 1,
//             name: "Lữ đoàn 602",
//             avatar:
//                 "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_North_Vietnam_%281955%E2%80%931976%29.svg/230px-Flag_of_North_Vietnam_%281955%E2%80%931976%29.svg.png"),
//         category: "Công nghệ thông tin",
//         documentUrl: "",
//         intro: "Bài ${index} giới thiệu về tính năng kỹ chiến thuật",
//         thumbUrl:
//             "http://localhost:8012/v1/cook-books-api/media/truyendan/7.png",
//         totalViews: 1000,
//         title:
//             "Bài ${index} giới thiệu về tính năng kỹ chiến thuật của trang bị thông tin",
//         videoUrl:
//             "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//         createTime: (DateTime.now().millisecondsSinceEpoch / 1000).floor() -
//             Random().nextInt(1000) * 86400));

// Random randomCreateTime = Random(DateTime.now().millisecondsSinceEpoch);

// List<ModelsLecture> lsLecturesTruyenDan = List.generate(
//     7,
//     (index) => ModelsLecture(
//         id: index + 1,
//         author: ModelsAuthor(
//             id: 1,
//             name: "Lữ đoàn 602",
//             avatar:
//                 "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_North_Vietnam_%281955%E2%80%931976%29.svg/230px-Flag_of_North_Vietnam_%281955%E2%80%931976%29.svg.png"),
//         category: ModelsCategory(path: "/truyendan", name: "Truyền dẫn"),
//         documentUrl: "",
//         intro: "Bài ${index + 1} giới thiệu về tính năng kỹ chiến thuật",
//         thumbUrl:
//             "http://localhost:8012/v1/cook-books-api/media/truyendan/${index + 1}.png",
//         totalViews: randomCreateTime.nextInt(500000),
//         title:
//             "Bài ${index + 1} truyền dẫn: giới thiệu về tính năng kỹ chiến thuật của trang bị thông tin",
//         videoUrl:
//             "http://localhost:8012/v1/cook-books-api/media/truyendan/${index + 1}.mp4",
//         createTime: (DateTime.now().millisecondsSinceEpoch / 1000).floor() -
//             Random().nextInt(1000) * 86400));

List<ModelsLecture> genListLecturesFromCategory(ModelsCategory category) {
  var ran = Random(DateTime.now().microsecondsSinceEpoch);
  return List<ModelsLecture>.generate(
      category.totalLectures ?? 0,
      (index) => ModelsLecture(
          id: index,
          category: category,
          createTime: DateTime.now().millisecondsSinceEpoch -
              ran.nextInt(100) * 86400000,
          intro:
              "Bài giảng video ${index + 1} về tìm hiểu tính năng kỹ chiến thuật và cách sử dụng của trang bị thông tin trong lĩnh vực chuyên ngành ${category.name}",
          title:
              "Bài ${index + 1} ${category.name} về tìm hiểu tính năng kỹ chiến thuật của trang bị thông tin",
          thumbUrl:
              "http://localhost:8012/v1/cook-books-api/media${category.path}/${index + 1}.png",
          videoUrl:
              "http://localhost:8012/v1/cook-books-api/media${category.path}/${index + 1}.mp4",
          totalViews: ran.nextInt(10000000),
          author: ModelsAuthor(
              id: 1,
              name: "${category.name} Lữ đoàn 602",
              avatar:
                  "https://vi.wikipedia.org/wiki/Qu%E1%BB%91c_k%E1%BB%B3_Vi%E1%BB%87t_Nam_D%C3%A2n_ch%E1%BB%A7_C%E1%BB%99ng_h%C3%B2a#/media/T%E1%BA%ADp_tin:Flag_of_North_Vietnam_(1955%E2%80%931976).svg")));
}

List<ModelsLecture> genListLectures() {
  var lsLectures = lsCategorys.fold(List<ModelsLecture>.empty(growable: true),
      (previousValue, element) {
    var sublistLectures = genListLecturesFromCategory(element);
    if (sublistLectures.isNotEmpty) {
      previousValue.addAll(sublistLectures);
    }

    return previousValue;
  });

  lsLectures.shuffle();
  return lsLectures;
}

List<ModelsLecture> lsLectures = genListLectures();
