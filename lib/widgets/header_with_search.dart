import 'package:flutter/material.dart';

class HeaderWithSearch extends StatelessWidget {
  final bool searchOptionIsVisible;
  final Widget headerContainer; 
  const HeaderWithSearch({super.key,
  required this.headerContainer,
   required this.searchOptionIsVisible});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Stack(
        children: [
        headerContainer,
        searchOptionIsVisible?
          Align(
          alignment: Alignment.bottomCenter,
            child: Container(
            padding: const EdgeInsets.only(left: 12, right: 12),
              width: MediaQuery.of(context).size.width*0.9,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    spreadRadius: 1
                  )
                ]
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search ...",
                    prefixIcon: Icon(Icons.search, size: 25, color: Colors.black.withOpacity(0.6),),
                    suffixIcon: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.find_replace_rounded, color: Colors.white,),
                    )
                    // suffixIcon: Icon(Icons.)
                  ),
                ),
              ),
            ),
          )
          :
          Container()
        ],
      ),
  );
  }
}