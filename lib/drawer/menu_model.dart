import 'package:flutter/material.dart';

class SideMenuModel {
  final String title;
  final Icon icons;
  final String path;
  const SideMenuModel(
      {required this.title, required this.icons, required this.path});
}

List<SideMenuModel> sideMenuItems = [
  const SideMenuModel(
      title: "Trang chủ",
      icons: Icon(
        Icons.home,
        color: Colors.black,
      ),
      path: '/'),
  const SideMenuModel(
      title: "Truyền dẫn",
      icons: Icon(
        Icons.linear_scale,
        color: Colors.black,
      ),
      path: '/truyendan'),
  const SideMenuModel(
      title: "Chuyển mạch",
      icons: Icon(
        Icons.switch_camera_outlined,
        color: Colors.black,
      ),
      path: '/chuyenmach'),
  const SideMenuModel(
      title: "Vô tuyến",
      icons: Icon(
        Icons.radio,
        color: Colors.black,
      ),
      path: '/votuyen'),
  const SideMenuModel(
      title: "Công nghệ thông tin",
      icons: Icon(
        Icons.devices,
        color: Colors.black,
      ),
      path: '/cntt'),
  const SideMenuModel(
      title: "Vi ba trunking",
      icons: Icon(
        Icons.vibration,
        color: Colors.black,
      ),
      path: '/vibatrunking'),
  const SideMenuModel(
      title: "Vệ tinh",
      icons: Icon(
        Icons.satellite_alt_outlined,
        color: Colors.black,
      ),
      path: '/vetinh'),
  const SideMenuModel(
      title: "Nguồn điện",
      icons: Icon(
        Icons.power,
        color: Colors.black,
      ),
      path: '/nguondien'),
  const SideMenuModel(
      title: "Xe máy",
      icons: Icon(
        Icons.motorcycle_sharp,
        color: Colors.black,
      ),
      path: '/xemay'),
  const SideMenuModel(
      title: "Đo lường",
      icons: Icon(
        Icons.format_list_numbered,
        color: Colors.black,
      ),
      path: '/doluong'),
  const SideMenuModel(
      title: "Quân khí",
      icons: Icon(
        Icons.settings,
        color: Colors.black,
      ),
      path: '/quankhi'),
  const SideMenuModel(
      title: "Xe cơ động",
      icons: Icon(
        Icons.car_rental,
        color: Colors.black,
      ),
      path: '/xecodong')
];
