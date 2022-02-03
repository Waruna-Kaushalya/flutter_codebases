import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/feature4_search/bloc/search_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/searchPage';

  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameHolder = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: BlocListener<SearchBloc, SearchState>(
          listener: (context, state) {
            // if (state is SuggestValueToquery) {
            //   _nameHolder.text = state.queryValue;
            // }
          },
          child: TextField(
            //? Search icon in keyboard
            textInputAction: TextInputAction.search,

            //? show the Keyboard automatically for a Textfield
            autofocus: true,
            // focusNode: runtimeType,
            // focusNode: ,

            controller: _nameHolder,
            onChanged: (value) {
              final searchBloc = context.read<SearchBloc>();

              searchBloc.add(SearchEvent(
                  queryValue: value,
                  status: SearchEventStatus.typeInTheSearchbar));
            },
            onSubmitted: (value) {
              final searchBloc = context.read<SearchBloc>();

              searchBloc.add(SearchEvent(
                  queryValue: value, status: SearchEventStatus.onSubmitted));
            },
            decoration: textFieldDecorationMethod(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.clear,
            ),
            onPressed: () {
              // _nameHolder.clear();
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topLeft,
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.status == SearchStateStatus.searchInitial) {
              final queryValue = state.queryValue;
              final suggestions = state.suggestions;
              return suggetionMListViewMethod(suggestions!, queryValue!);
            } else if (state.status == SearchStateStatus.suggestionsDisplay) {
              final queryValue = state.queryValue;
              final suggestions = state.suggestions;
              return suggetionMListViewMethod(suggestions!, queryValue!);
            } else if (state.status == SearchStateStatus.showResult) {
              final queryValue = state.queryValue;
              final resultList = state.results;

              return showResultMethod(queryValue, resultList);
            } else if (state.status == SearchStateStatus.cityNotFound) {
              return const CityNotFoundWidget();
            } else if (state.status == SearchStateStatus.resultLoading) {
              return Container(
                alignment: Alignment.topLeft,
                child: const LinearProgressIndicator(
                  backgroundColor: Colors.red,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              );
            } else {
              return Text("dfvdfvd");
            }
          },
        ),
      ),
    );
  }

  Center showResultMethod(String? queryValue, List<String>? resultList) {
    return Center(
      child: ListView.builder(
        //? this two line prevent y=unbounded common error in list view
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: resultList!.isEmpty ? 0 : resultList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              resultList[index],
              style: const TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }

  ListView suggetionMListViewMethod(
      List<String> suggestions, String queryValue) {
    return ListView.builder(
      //? this two line prevent y=unbounded common error in list view
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: suggestions.length < 5 ? suggestions.length : 5,

      // itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        final queryText = suggestion.substring(0, queryValue.length);
        final remainingtext = suggestion.substring(queryValue.length);

        return ListTile(
          onTap: () {
            //? ? ? ? ? ? ? ? ? ? ? ?                        //
            //query = suggestion;
            // SelectSuggestQuery
            final searchBloc = context.read<SearchBloc>();
            // weatherCubit.getWeather(cityName.trim());
            // searchBloc
            //     .add(SelectSuggestQuery(selectedSuggestQuery: suggestion));
            //?this line close search bar and resault goese in to varible
            // close(context, suggestion);
            //? directly go in to disply page with updating query
            //? ? ? ? ? ? ? ? ? ? ? ?
            // showResults(context);
          },
          leading: const Icon(
            Icons.location_city,
          ),
          // title: Text(suggestion),
          title: RichText(
            text: TextSpan(
              text: queryText,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: [
                TextSpan(
                  text: remainingtext,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  InputDecoration textFieldDecorationMethod() {
    return const InputDecoration(
      labelStyle: TextStyle(color: Colors.black, fontSize: 4),
      // hintStyle: TextStyle(color: Colors.black),
      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        borderSide: BorderSide(width: 1, color: Colors.black),
      ),
      hintText: 'Search city',
    );
  }
}

class CityNotFoundWidget extends StatelessWidget {
  const CityNotFoundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.location_city,
            size: 120,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "City Not Found",
            style: TextStyle(
              color: Colors.black,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

//! *************************************************************
//! *************************************************************

// class CitySearch extends SearchDelegate {
//   final cities = [
//     "Badulla",
//     "Balangoda",
//     "Ballaketuwa",
//     "Bagawantalawa",
//     "Colombo",
//     "Kandy",
//     "Kottawa",
//     "Kotte",
//     "Kohonawala",
//   ];

//   //!
//   @override
//   List<Widget>? buildActions(BuildContext context) => [
//         //? check query is emplt or not, if emty clear icon not apper
//         if (query.isNotEmpty)
//           IconButton(
//             icon: const Icon(
//               Icons.clear,
//             ),
//             onPressed: () {
//               query = "";
//               //? this line comback to suggestins closing disaply page
//               showSuggestions(context);
//             },
//           ),
//       ];

//   //!
//   @override
//   Widget? buildLeading(BuildContext context) => IconButton(
//       icon: const Icon(
//         Icons.arrow_back,
//       ),
//       //? Close search bar
//       onPressed: () {
//         close(context, null);
//       });

//   //!
//   @override
//   Widget buildResults(BuildContext context) {
//     String queryValue = query.trim();
//     String? queryValueSubmited;

//     for (var city in cities) {
//       if (city.toLowerCase().contains(queryValue.toLowerCase())) {
//         if (city.toLowerCase() == queryValue.toLowerCase()) {
//           queryValueSubmited = queryValue;
//         } else if (query.isEmpty) {
//           queryValueSubmited = "City Not Enternd";
//         } else {
//           queryValueSubmited = "City Not Found";
//         }
//       }
//     }
//     const notFound = "City Not Found";
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Icon(
//             Icons.location_city,
//             size: 120,
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           Text(
//             queryValueSubmited ?? notFound,
//             style: const TextStyle(
//               color: Colors.black,
//               fontSize: 45,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );

//     //?????
//   }

//   //!
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final queryValue = query.trim();
//     final suggestions = queryValue.isEmpty
//         ? cities
//         : cities.where(
//             (city) {
//               final cityLower = city.toLowerCase();
//               final queryLower = queryValue.toLowerCase();
//               return cityLower.startsWith(queryLower);
//             },
//           ).toList();

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // const Padding(
//         //   padding: EdgeInsets.only(top: 10, left: 20),
//         //   child: Text(
//         //     "Suggestions",
//         //     style: TextStyle(
//         //       color: Colors.black45,
//         //       fontSize: 18,
//         //     ),
//         //   ),
//         // ),
//         ListView.builder(
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           itemCount: suggestions.length < 5 ? suggestions.length : 5,

//           // itemCount: suggestions.length,
//           itemBuilder: (context, index) {
//             final suggestion = suggestions[index];
//             final queryText = suggestion.substring(0, queryValue.length);
//             final remainingtext = suggestion.substring(queryValue.length);

//             return ListTile(
//               onTap: () {
//                 query = suggestion;
//                 //?this line close search bar and resault goese in to varible
//                 // close(context, suggestion);
//                 //? directly go in to disply page with updating query
//                 showResults(context);
//               },
//               leading: const Icon(
//                 Icons.location_city,
//               ),
//               // title: Text(suggestion),
//               title: RichText(
//                 text: TextSpan(
//                   text: queryText,
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                   ),
//                   children: [
//                     TextSpan(
//                       text: remainingtext,
//                       style: const TextStyle(
//                         color: Colors.grey,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }

//   //! =======================Theme===============================
//   //! =======================Theme===============================
//   @override
//   ThemeData appBarTheme(BuildContext context) {
//     assert(context != null);
//     final ThemeData theme = Theme.of(context);
//     final ColorScheme colorScheme = theme.colorScheme;
//     assert(theme != null);
//     return theme.copyWith(
//       appBarTheme: AppBarTheme(
//         backgroundColor: colorScheme.brightness == Brightness.dark
//             ? Colors.grey[900]
//             : Colors.white,
//         iconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
//       ),
//       inputDecorationTheme: searchFieldDecorationTheme ??
//           InputDecorationTheme(
//             labelStyle: TextStyle(color: Colors.black, fontSize: 4),
//             // hintStyle: TextStyle(color: Colors.black),
//             contentPadding:
//                 const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
//             hintStyle: searchFieldStyle ?? theme.inputDecorationTheme.hintStyle,
//             // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
//             // filled: true,
//             // fillColor: Color(0xFFF2F2F2),
//             focusedBorder: const OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(100)),
//               borderSide: BorderSide(width: 1, color: Colors.red),
//             ),
//             disabledBorder: const OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(100)),
//               borderSide: BorderSide(width: 1, color: Colors.orange),
//             ),
//             enabledBorder: const OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(100)),
//               borderSide: BorderSide(width: 1, color: Colors.green),
//             ),
//             border: const OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(100)),
//                 borderSide: BorderSide(
//                   width: 1,
//                 )),
//             errorBorder: const OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(4)),
//                 borderSide: BorderSide(width: 1, color: Colors.black)),
//             focusedErrorBorder: const OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(4)),
//                 borderSide: BorderSide(width: 1, color: Colors.yellowAccent)),
//           ),
//     );
//   }
// }
