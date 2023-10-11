import 'package:flutter/material.dart';
import 'package:news_now/constants.dart';
import 'package:news_now/screens/search_screen.dart';
import 'package:news_now/widgets/categories_list_view.dart';
import 'package:news_now/widgets/news_list_view_builder.dart';

String keyWord = '';
String dropDownValue = 'assets/flags/eg.png';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Now',
                  style:
                      TextStyle(color: kmainColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SearchScreen();
                    }));
                  },
                  child: const Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                      value: dropDownValue,
                      icon: const Icon(Icons.language_rounded),
                      style: const TextStyle(color: kmainColor),
                      underline: Container(
                        height: 0,
                      ),
                      padding: const EdgeInsets.all(4),
                      borderRadius: BorderRadius.circular(8),
                      iconSize: 22,
                      items: <String>[
                        'assets/flags/eg.png',
                        'assets/flags/us.png',
                        'assets/flags/ar.png',
                        'assets/flags/fr.png',
                        'assets/flags/sa.png',
                        'assets/flags/ae.png'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 6),
                            child: Image.asset(
                              value,
                              height: 18,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue = newValue!;
                        });
                      }),
                )
              ],
            )
          ],
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(
                country: dropDownValue.substring(13, 15),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            NewsListViewBuilder(
              country: dropDownValue.substring(13, 15),
              category: 'general',
            )
          ],
        ),
      ),
    );
  }
}
