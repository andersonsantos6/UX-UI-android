import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30)),
                width: MediaQuery.of(context).size.width * 0.85,
                height: 45,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            child: Image.asset(
                                'lib/src/assets/searchBar/google_logo.svg'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            child: Image.asset(
                                'lib/src/assets/searchBar/Google_Assistant_logo.svg.png'),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 30,
                            child: Image.asset(
                                'lib/src/assets/searchBar/Google_Lens_logo.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
