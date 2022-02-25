import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/logic.dart';
import '../themes/themes.dart';

class SearchBlocPage extends StatefulWidget {
  static const routeName = '/searchPage';

  const SearchBlocPage({Key? key}) : super(key: key);

  @override
  State<SearchBlocPage> createState() => _SearchBlocPageState();
}

class _SearchBlocPageState extends State<SearchBlocPage> {
  FocusNode myFocusNode = FocusNode();
  TextEditingController nameHolder = TextEditingController();

  @override
  void dispose() {
    myFocusNode.dispose();
    nameHolder.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            context.read<SearchBloc>().add(const SearchBackArrowBtnPressed());

            Navigator.pop(context);
          },
        ),
        title: BlocListener<SearchBloc, SearchState>(
          listener: (context, state) {
            if (state.stateStatus == SearchStateStatus.loading) {
              //? when loading and show result normally search bar is clered it sself. So qury value dislay in search bar manually
              nameHolder.text = state.queryValue.toString();
            }
          },
          child: TextField(
            //? Search icon in keyboard
            textInputAction: TextInputAction.search,

            //? show the Keyboard automatically for a Textfield
            autofocus: true,
            focusNode: myFocusNode,

            controller: nameHolder,
            onChanged: (value) {
              context.read<SearchBloc>().add(SearchQueryTyped(
                    queryValue: value,
                  ));
            },
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                context.read<SearchBloc>().add(SearchQuerySubmitted(
                      queryValue: value,
                    ));
              } else {
                // myFocusNode.requestFocus();
                // myFocusNode.unfocus();
                // Navigator.pop(context);
              }
            },

            decoration: textFieldDecorationMethod(),
          ),
        ),
        actions: [
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.queryValue != "") {
                return IconButton(
                  icon: const Icon(
                    Icons.clear,
                  ),
                  onPressed: () {
                    nameHolder.clear();
                    myFocusNode.requestFocus();
                    //! remove commet
                    context
                        .read<SearchBloc>()
                        .add(const SearchClearBtnPressed());
                  },
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topLeft,
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.stateStatus.isInitial) {
              final queryValue = state.queryValue;
              final suggestions = state.suggestions;
              // return suggetionMListViewMethod(
              //     suggestions!, queryValue!, myFocusNode);
              return SuggetionDisplayWidget(
                  suggestions: suggestions,
                  queryValue: queryValue,
                  myFocusNode: myFocusNode);
            } else if (state.stateStatus.isSuccess) {
              // final queryValue = state.queryValue;
              final resultList = state.results;
              // return showResultMethod(queryValue, resultList);
              return ShowResultWidget(resultList: resultList);
            } else if (state.stateStatus.isFailure) {
              return CityNotFoundWidget(
                errorMsg: state.errorMsg.toString(),
              );
            } else if (state.stateStatus.isLoading) {
              return const ResultLoadingWidget();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}

class SuggetionDisplayWidget extends StatelessWidget {
  const SuggetionDisplayWidget({
    Key? key,
    required this.suggestions,
    required this.queryValue,
    required this.myFocusNode,
  }) : super(key: key);

  final List<String>? suggestions;
  final String? queryValue;
  final FocusNode myFocusNode;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //? this two line prevent y=unbounded common error in list view
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: suggestions!.length < 5 ? suggestions!.length : 5,

      // itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions![index];
        final queryText = suggestion.substring(0, queryValue!.length);
        final remainingtext = suggestion.substring(queryValue!.length);

        return ListTile(
          onTap: () {
            myFocusNode.unfocus();
            context
                .read<SearchBloc>()
                .add(SearchSuggetionPressed(suggestion: suggestion));

            //?this line close search bar and resault goese in to varible
            // close(context, suggestion);
            //? directly go in to disply page with updating query
            //? ? ? ? ? ? ? ? ? ? ? ?
            // showResults(context);
          },
          leading: const Icon(
            Icons.schedule,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              context.read<SearchBloc>().add(SearchSuggetionRemoved(
                    suggestion: suggestion,
                    queryValue: queryValue!,
                  ));
            },
          ),
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
}

class ShowResultWidget extends StatelessWidget {
  const ShowResultWidget({
    Key? key,
    this.resultList,
    this.queryValue,
  }) : super(key: key);

  final List<String>? resultList;
  final String? queryValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        //? this two line prevent y=unbounded common error in list view
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: resultList!.isEmpty ? 0 : resultList!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              resultList![index],
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
}

Center showResultMethod(List<String>? resultList) {
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

// ListView suggetionMListViewMethod(
//     List<String> suggestions, String queryValue, FocusNode focusNode) {
//   return ListView.builder(
//     //? this two line prevent y=unbounded common error in list view
//     scrollDirection: Axis.vertical,
//     shrinkWrap: true,
//     itemCount: suggestions.length < 5 ? suggestions.length : 5,

//     // itemCount: suggestions.length,
//     itemBuilder: (context, index) {
//       final suggestion = suggestions[index];
//       final queryText = suggestion.substring(0, queryValue.length);
//       final remainingtext = suggestion.substring(queryValue.length);

//       return ListTile(
//         onTap: () {
//           focusNode.unfocus();
//           context
//               .read<SearchBloc>()
//               .add(SearchSuggetionPressed(suggestion: suggestion));

//           //?this line close search bar and resault goese in to varible
//           // close(context, suggestion);
//           //? directly go in to disply page with updating query
//           //? ? ? ? ? ? ? ? ? ? ? ?
//           // showResults(context);
//         },
//         leading: const Icon(
//           Icons.schedule,
//         ),
//         trailing: IconButton(
//           icon: const Icon(Icons.clear),
//           onPressed: () {
//             context.read<SearchBloc>().add(SearchSuggetionRemoved(
//                   suggestion: suggestion,
//                   queryValue: queryValue,
//                 ));
//           },
//         ),
//         title: RichText(
//           text: TextSpan(
//             text: queryText,
//             style: const TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//             ),
//             children: [
//               TextSpan(
//                 text: remainingtext,
//                 style: const TextStyle(
//                   color: Colors.grey,
//                   fontSize: 18,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }

class ResultLoadingWidget extends StatelessWidget {
  const ResultLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: const LinearProgressIndicator(
        backgroundColor: Colors.red,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
      ),
    );
  }
}

class CityNotFoundWidget extends StatelessWidget {
  final String errorMsg;
  const CityNotFoundWidget({
    Key? key,
    required this.errorMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_city,
            size: 120,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            errorMsg,
            style: const TextStyle(
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
