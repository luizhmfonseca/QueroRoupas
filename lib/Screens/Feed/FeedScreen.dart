import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:quero_roupas/Screens/Feed/Title/titleFeed.dart';
import 'package:quiver/iterables.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  var partList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Em Desenvolvimento"),
        centerTitle: true,
        backgroundColor: Colors.amber[500],
      ),
      body: ListView(children: partList.map<Widget>((arg)=>TitleFeed(doc: arg)).toList()),
    );
  }
  List<Map<String,dynamic>>i = [
    { "ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title" : "Tênis Jordan Chicago black"
    },
  {"ImageUrl" : "https://www.techinn.com/f/13776/137769821/sony-ps5.jpg",
    "title"   : "PS5"
  },
  { "ImageUrl" : "https://cdn-images.farfetch-contents.com/14/64/54/73/14645473_22740446_1000.jpg",
    "title"    : "Moleton"
  },
  {"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
    "title" : "Tênis Jordan Chicago black"
  },
  {"ImageUrl" : "https://www.techinn.com/f/13776/137769821/sony-ps5.jpg",
    "title"   : "PS5"
  },
  {"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
    "title"    : "Moleton"
  },

{"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
"title"    : "Moleton"
},
    { "ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title" : "Tênis Jordan Chicago black"
    },
    {"ImageUrl" : "https://www.techinn.com/f/13776/137769821/sony-ps5.jpg",
      "title"   : "PS5"
    },
    { "ImageUrl" : "https://cdn-images.farfetch-contents.com/14/64/54/73/14645473_22740446_1000.jpg",
      "title"    : "Moleton"
    },
    {"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title" : "Tênis Jordan Chicago black"
    },
    {"ImageUrl" : "https://www.techinn.com/f/13776/137769821/sony-ps5.jpg",
      "title"   : "PS5"
    },
    {"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title"    : "Moleton"
    },

    {"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title"    : "Moleton"
    },
    { "ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title" : "Tênis Jordan Chicago black"
    },
    {"ImageUrl" : "https://www.techinn.com/f/13776/137769821/sony-ps5.jpg",
      "title"   : "PS5"
    },
    { "ImageUrl" : "https://cdn-images.farfetch-contents.com/14/64/54/73/14645473_22740446_1000.jpg",
      "title"    : "Moleton"
    },
    {"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title" : "Tênis Jordan Chicago black"
    },
    {"ImageUrl" : "https://www.techinn.com/f/13776/137769821/sony-ps5.jpg",
      "title"   : "PS5"
    },
    {"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title"    : "Moleton"
    },

    {"ImageUrl" : "https://http2.mlstatic.com/D_NQ_NP_919899-MLB44783276787_022021-O.webp",
      "title"    : "Moleton"
    }
  ];

List SplitList(){
  partList = partition(i, 6).toList();
  print(partList);
  return partList;
}

  @override
  void initState() {
    super.initState();
    SplitList();
  }
}
