import 'package:flutter/material.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/search/presentation/viewmodels/search_viewmodel.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key, required this.viewmodel}) : super(key: key);
  final SearchViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TextField(
        controller: viewmodel.textController,
        onSubmitted: (text) => viewmodel.fetchProducts(),
        onEditingComplete: () => viewmodel.fetchProducts(),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.outline),
          ),
          fillColor: Colors.transparent,
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.outline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.outline),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: context.colors.outline),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          hintStyle: TextStyle(color: context.colors.outline),
          hintText: 'Search on Tradeling',
          suffixIcon: Icon(Icons.search, color: Colors.deepOrange),
        ),
        style: TextStyle(color: Colors.black),
        cursorColor: Colors.black,
      ),
    );
  }
}
