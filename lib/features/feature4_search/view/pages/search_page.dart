import 'package:flutter/material.dart';
import 'package:flutter_codebase/features/feature4_search/bloc/search_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;

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
            context.read<SearchBloc>().add(const SearchEvent(
                  eventStatus: SearchEventStatus.clickedBackArrowButton,
                ));

            Navigator.pop(context);
          },
        ),
        title: BlocListener<SearchBloc, SearchState>(
          listener: (context, state) {
            if (state.stateStatus == SearchStateStatus.resultLoading) {
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
                    eventStatus: SearchEventStatus.typeInTheSearchbar,
                  ));
            },
            onSubmitted: (value) {
              context.read<SearchBloc>().add(SearchEvent(
                    queryValue: value,
                    eventStatus: SearchEventStatus.onSubmitted,
                  ));
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
              _nameHolder.clear();

              context.read<SearchBloc>().add(const SearchEvent(
                    eventStatus: SearchEventStatus.clickedClearIconButton,
                  ));
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topLeft,
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.stateStatus == SearchStateStatus.searchInitial) {
              final queryValue = state.queryValue;
              final suggestions = state.suggestions;
              return suggetionMListViewMethod(suggestions!, queryValue!);
            } else if (state.stateStatus == SearchStateStatus.showResult) {
              final queryValue = state.queryValue;
              final resultList = state.results;
              return showResultMethod(queryValue, resultList);
            } else if (state.stateStatus == SearchStateStatus.cityNotFound) {
              return const CityNotFoundWidget();
            } else if (state.stateStatus == SearchStateStatus.resultLoading) {
              return const ResultLoadingWidget();
            } else {
              return const Text("");
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

            context.read<SearchBloc>().add(SearchEvent(
                  queryValue: suggestion,
                  eventStatus: SearchEventStatus.suggestedCityClicked,
                ));

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
            Icons.schedule,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              //?suggestion
              context.read<SearchBloc>().add(SearchEvent(
                    suggestion: suggestion,
                    eventStatus: SearchEventStatus.removeSuggetion,
                  ));
              developer.log(suggestion, name: 'suggestion');
            },
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
