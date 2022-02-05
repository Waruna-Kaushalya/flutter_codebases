import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/feature4_search/bloc/search_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/theme.dart';
import '../widgets/widgets.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/searchPage';

  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameHolder = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            context.read<SearchBloc>().add(SearchEvent(
                  eventStatus: SearchEventStatus.clickedBackArrowBtnEvnt,
                ));

            Navigator.pop(context);
          },
        ),
        title: BlocListener<SearchBloc, SearchState>(
          listener: (context, state) {
            if (state.stateStatus ==
                SearchStateStatus.searchResultLoadingState) {
              //? when loading and show result normally search bar is clered it sself. So qury value dislay in search bar manually
              _nameHolder.text = state.queryValue.toString();
            }
          },
          child: TextField(
            //? Search icon in keyboard
            textInputAction: TextInputAction.search,

            //? show the Keyboard automatically for a Textfield
            autofocus: true,

            controller: _nameHolder,
            onChanged: (value) {
              context.read<SearchBloc>().add(SearchEvent(
                    queryValue: value,
                    eventStatus: SearchEventStatus.typeInSearchbarEvnt,
                  ));
            },
            onSubmitted: (value) {
              context.read<SearchBloc>().add(SearchEvent(
                    queryValue: value,
                    eventStatus: SearchEventStatus.submittedSearchEvnt,
                  ));
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
                    _nameHolder.clear();

                    context.read<SearchBloc>().add(SearchEvent(
                          eventStatus: SearchEventStatus.clickedClearBtnEvnt,
                        ));
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
            if (state.stateStatus == SearchStateStatus.searchInitialState) {
              final queryValue = state.queryValue;
              final suggestions = state.suggestions;
              return suggetionMListViewMethod(suggestions!, queryValue!);
            } else if (state.stateStatus ==
                SearchStateStatus.searchResultShowState) {
              final queryValue = state.queryValue;
              final resultList = state.results;
              return showResultMethod(queryValue, resultList);
            } else if (state.stateStatus ==
                SearchStateStatus.searchNotFoundState) {
              return const CityNotFoundWidget();
            } else if (state.stateStatus ==
                SearchStateStatus.searchResultLoadingState) {
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

//! second method

// import 'package:flutter/material.dart';
// import 'package:flutter_codebase/features/feature4_search/bloc/search_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../theme/theme.dart';
// import '../widgets/widgets.dart';

// class SearchPage extends StatelessWidget {
//   static const routeName = '/searchPage';

//   const SearchPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController _nameHolder = TextEditingController();

//     return BlocBuilder<SearchBloc, SearchState>(
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             foregroundColor: Colors.black,
//             backgroundColor: Colors.white,
//             leading: IconButton(
//               icon: const Icon(
//                 Icons.arrow_back,
//               ),
//               onPressed: () {
//                 context.read<SearchBloc>().add(SearchEvent(
//                       eventStatus: SearchEventStatus.clickedBackArrowBtnEvnt,
//                     ));

//                 Navigator.pop(context);
//               },
//             ),
//             title: BlocListener<SearchBloc, SearchState>(
//               listener: (context, state) {
//                 if (state.stateStatus ==
//                     SearchStateStatus.searchResultLoadingState) {
//                   //? when loading and show result normally search bar is clered it sself. So qury value dislay in search bar manually
//                   _nameHolder.text = state.queryValue.toString();
//                 }
//               },
//               child: TextField(
//                 //? Search icon in keyboard
//                 textInputAction: TextInputAction.search,

//                 //? show the Keyboard automatically for a Textfield
//                 autofocus: true,

//                 controller: _nameHolder,
//                 onChanged: (value) {
//                   context.read<SearchBloc>().add(SearchEvent(
//                         queryValue: value,
//                         eventStatus: SearchEventStatus.typeInSearchbarEvnt,
//                       ));
//                 },
//                 onSubmitted: (value) {
//                   context.read<SearchBloc>().add(SearchEvent(
//                         queryValue: value,
//                         eventStatus: SearchEventStatus.submittedSearchEvnt,
//                       ));
//                 },

//                 decoration: textFieldDecorationMethod(),
//               ),
//             ),
//             actions: [
//               Builder(builder: (context) {
//                 if (state.queryValue != "") {
//                   return IconButton(
//                     icon: const Icon(
//                       Icons.clear,
//                     ),
//                     onPressed: () {
//                       _nameHolder.clear();

//                       context.read<SearchBloc>().add(SearchEvent(
//                             eventStatus: SearchEventStatus.clickedClearBtnEvnt,
//                           ));
//                     },
//                   );
//                 } else {
//                   return const SizedBox.shrink();
//                 }
//               })
//             ],
//           ),
//           body: Container(
//             alignment: Alignment.topLeft,
//             child: Builder(
//               builder: (context) {
//                 if (state.stateStatus == SearchStateStatus.searchInitialState) {
//                   final queryValue = state.queryValue;
//                   final suggestions = state.suggestions;
//                   return suggetionMListViewMethod(suggestions!, queryValue!);
//                 } else if (state.stateStatus ==
//                     SearchStateStatus.searchResultShowState) {
//                   final queryValue = state.queryValue;
//                   final resultList = state.results;
//                   return showResultMethod(queryValue, resultList);
//                 } else if (state.stateStatus ==
//                     SearchStateStatus.searchNotFoundState) {
//                   return const CityNotFoundWidget();
//                 } else if (state.stateStatus ==
//                     SearchStateStatus.searchResultLoadingState) {
//                   return const ResultLoadingWidget();
//                 } else {
//                   return const SizedBox.shrink();
//                 }
//               },
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
