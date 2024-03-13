import 'package:flutter/material.dart';
import 'package:halodoc_ex/modules/home/widgets/widgets.dart';

class HomeState {
  final List<Item> specialServices = const [
    Item(text: "Layanan Bidang", height: 60.0, spaceHeight: 5.0),
    Item(text: "Perawatan Diabetes", height: 60.0, spaceHeight: 5.0),
    Item(text: "Kesehatan Jantung", height: 60.0, spaceHeight: 5.0),
    Item(text: "Kesehatan Kulit", height: 60.0, spaceHeight: 5.0),
    Item(text: "Kesehatan Seksual", height: 60.0, spaceHeight: 5.0),
    Item(text: "Kesehatan Mental", height: 60.0, spaceHeight: 5.0),
    Item(text: "Kesehatan Hewan", height: 60.0, spaceHeight: 5.0),
    Item(text: "Parenting", height: 60.0, spaceHeight: 5.0),
  ];

  final List<Item> healthSupport = const [
    Item(text: "Cek stress", height: 60.0, spaceHeight: 5.0),
    Item(text: "Kalender Menstruasi", height: 60.0, spaceHeight: 5.0),
    Item(text: "Kalkulator BMI", height: 60.0, spaceHeight: 5.0),
    Item(text: "Kalender Kehamilan", height: 60.0, spaceHeight: 5.0),
    Item(text: "Risiko Jantung", height: 60.0, spaceHeight: 5.0),
    Item(text: "Risiko Diabetes", height: 60.0, spaceHeight: 5.0),
    Item(text: "Pengingat Obat", height: 60.0, spaceHeight: 5.0),
    Item(text: "Donasi", height: 60.0, spaceHeight: 5.0),
    Item(text: "Tes Depresi", height: 60.0, spaceHeight: 5.0),
    Item(text: "Tes Gangguan Kecemasan", height: 60.0, spaceHeight: 5.0),
  ];

  final List<Widget> banners = [
    Container(
        constraints: const BoxConstraints(maxWidth: 450.0), color: Colors.red),
    Container(
        constraints: const BoxConstraints(maxWidth: 450.0),
        color: Colors.yellow),
    Container(
        constraints: const BoxConstraints(maxWidth: 450.0),
        color: Colors.green),
    Container(
        constraints: const BoxConstraints(maxWidth: 450.0), color: Colors.blue),
  ];
  final List<String> solutions = [
    "Chat Dengan Dokter",
    "Toko Kesehatan",
    "Buat Janji RS",
    "Janji Medis",
    "Home Lab & Vaksinasi",
  ];

  final List<String> categories = [
    "Kesehatan Seksual",
    "Saluran Pencernaan",
    "Asma"
  ];
}
