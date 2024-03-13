import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Section4 extends StatelessWidget {
  const Section4({super.key});

  static const List<String> categories = [
    "Terbaru",
    "Populer",
    "Kecantikan",
    "Jerawat",
    "Kehamilan"
  ];

  static RxList<String> newest = ['01', '02', '03', '04', '05', '06', '07'].obs;
  static RxList<String> popular =
      ['11', '12', '13', '14', '15', '16', '17', '18'].obs;
  static RxList<String> beauty = ['21', '22', '23', '24', '25', '26'].obs;
  static RxList<String> acne = ['31', '32', '33', '34', '35', '36', '37'].obs;
  static RxList<String> pregnancy = ['41', '42', '43', '44', '45', '46'].obs;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    RxInt currentCategory = 0.obs;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      constraints: const BoxConstraints(maxWidth: 1200.0),
      width: size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Baca 100+ Artikel Baru',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan aksi yang ingin dilakukan ketika tombol "Lihat Semua" ditekan
                },
                child: const Text(
                  "Lihat Semua",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 40.0,
            child: ListView.separated(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CategoryBox(
                      currentCategory: currentCategory,
                      categories: categories,
                      index: index,
                    ),
                    const SizedBox(width: 10.0),
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 2.0),
            ),
          ),
          const SizedBox(height: 20.0),
          Obx(() {
            switch (currentCategory.value) {
              case 0:
                return CategoryContent(
                  category: newest,
                  color: Colors.blue,
                );
              case 1:
                return CategoryContent(
                  category: popular,
                  color: Colors.red,
                );
              case 2:
                return CategoryContent(
                  category: beauty,
                  color: Colors.yellow,
                );
              case 3:
                return CategoryContent(
                  category: acne,
                  color: Colors.pink,
                );
              case 4:
                return CategoryContent(
                  category: pregnancy,
                  color: Colors.green,
                );
              default:
                return const SizedBox(); // Jika kategori tidak valid, tampilkan widget kosong
            }
          }),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}

class CategoryContent extends StatelessWidget {
  const CategoryContent(
      {super.key, required this.category, required this.color});

  final RxList<String> category;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.0,
      child: Obx(
        () {
          if (category.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    height: 320.0,
                    width: 280.0,
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Center(child: Text(category[index])),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.currentCategory,
    required this.categories,
    required this.index,
  });

  final RxInt currentCategory;
  final List<String> categories;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Update currentCategory saat CategoryBox ditekan
        currentCategory.value = index;
      },
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: currentCategory.value == index
                ? const Color(0xFFFBE6ED)
                : Colors.white,
            border: Border.all(
              color: currentCategory.value == index ? Colors.red : Colors.grey,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Center(
              child: Text(
                categories[index],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
