import 'dart:async';

// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:instiapp/data/dataContainer.dart';
// import 'package:location/location.dart';



class Map extends StatefulWidget {
  const Map({ Key? key }) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      showSearch(
                        context: context,
                        delegate: CustomSearch(),
                      );
                    },
                    heroTag: "btn1",
                    // backgroundColor: primaryColor,
                    tooltip: 'Search',
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                  SizedBox(height: 16.0),
                  FloatingActionButton(
                    onPressed: (){},
                    heroTag: "btn2",
                    backgroundColor: Colors.white,
                    tooltip: 'Layers',
                    child: Icon(Icons.layers, color: Colors.black45),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class CustomSearch extends SearchDelegate<String> {
  // @override
  // ThemeData appBarTheme(BuildContext context) {
  //   assert(context != null);
  //   final ThemeData theme = Theme.of(context);
  //   assert(theme != null);
  //   return theme.copyWith(
  //     inputDecorationTheme: InputDecorationTheme(
  //           hintStyle: TextStyle(color: theme.primaryTextTheme.headline6.color.withOpacity(0.6))),
  //       primaryColor: theme.primaryColor,
  //       primaryIconTheme: theme.primaryIconTheme,
  //       primaryColorBrightness: theme.primaryColorBrightness,
  //       primaryTextTheme: theme.primaryTextTheme,
  //       textTheme: theme.textTheme.copyWith(
  //           headline6: theme.textTheme.headline6
  //               .copyWith(color: theme.primaryTextTheme.headline6.color))
  //   );
  // }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          height: 425,
          decoration: BoxDecoration(
            color: Colors.white10,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/map_search.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    "This location search is powered by a comprehensive list of keywords. For example, if you search 'food', the dining hall and canteens will come up as suggestions.",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: Text(query),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          height: 425,
          decoration: BoxDecoration(
            color: Colors.white10,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/map_search.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    "This location search is powered by a comprehensive list of keywords. For example, if you search 'food', the dining hall and canteens will come up as suggestions.",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    else{
      return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          height: 425,
          decoration: BoxDecoration(
            color: Colors.white10,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/map_search.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    "This location search is powered by a comprehensive list of keywords. For example, if you search 'food', the dining hall and canteens will come up as suggestions.",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ); 
    }
  }
}
