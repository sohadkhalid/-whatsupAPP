import 'package:flutter/material.dart';

import 'category.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Category> categories = [
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: " Lana",
      message: "Hallo",
      date: "12:12 am",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: " نشاطات لجنة المهندسين الشباب",
      message: "Hallo",
      date: "yesterday",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Eng.Anas",
      message: "Hallo",
      date: "Sunday",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "Monday",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "11:11 pm",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "12:15 am",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "Friday",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "12:12 am",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "5:05am",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "Wednesday",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "10:10am",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "1:01",
    ),
    Category(
      id: "1",
      imageUrl:
          "https://as2.ftcdn.net/v2/jpg/05/89/93/27/1000_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg",
      name: "Category 1",
      message: "Hallo",
      date: "Tuesdy",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              child: Image.network(
                categories[index].imageUrl,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            title: Image.network(categories[index].imageUrl),
            subtitle: Text(categories[index].message),
            trailing: Text(categories[index].date.toString()),
          );
        },
      ),
    );
  }
}
