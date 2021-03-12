import 'package:flutter/material.dart';
import 'package:youtube_first/components/custom_gridview.dart';
import 'package:youtube_first/components/drawer.dart';

class BlogPage extends StatelessWidget {
  var articles = [
    {
      "image": "android",
      "title": "Search in Android",
      "description":
          "So the search is crucial factor on how usable your application..."
    },
    {
      "image": "java",
      "title": "Java Lambda Expressions",
      "description":
          "Lambda Expressions are nameless functions given as constant values..."
    },
    {
      "image": "hashtag",
      "title": "Databinding in C# and .NET",
      "description":
          "The concept of databinding is quite simple; It allows you to 'bind'..."
    },
    {
      "image": "android",
      "title": "Search in Android",
      "description":
          "So the search is crucial factor on how usable your application..."
    },
    {
      "image": "java",
      "title": "Java Lambda Expressions",
      "description":
          "Lambda Expressions are nameless functions given as constant values..."
    },
    {
      "image": "hashtag",
      "title": "Databinding in C# and .NET",
      "description":
          "The concept of databinding is quite simple; It allows you to 'bind'..."
    },
    {
      "image": "android",
      "title": "Search in Android",
      "description":
          "So the search is crucial factor on how usable your application..."
    },
    {
      "image": "java",
      "title": "Java Lambda Expressions",
      "description":
          "Lambda Expressions are nameless functions given as constant values..."
    },
    {
      "image": "hashtag",
      "title": "Databinding in C# and .NET",
      "description":
          "The concept of databinding is quite simple; It allows you to 'bind'..."
    },
    {
      "image": "android",
      "title": "Search in Android",
      "description":
          "So the search is crucial factor on how usable your application..."
    },
    {
      "image": "java",
      "title": "Java Lambda Expressions",
      "description":
          "Lambda Expressions are nameless functions given as constant values..."
    },
    {
      "image": "hashtag",
      "title": "Databinding in C# and .NET",
      "description":
          "The concept of databinding is quite simple; It allows you to 'bind'..."
    },
    {
      "image": "android",
      "title": "Search in Android",
      "description":
          "So the search is crucial factor on how usable your application..."
    },
    {
      "image": "java",
      "title": "Java Lambda Expressions",
      "description":
          "Lambda Expressions are nameless functions given as constant values..."
    },
    {
      "image": "hashtag",
      "title": "Databinding in C# and .NET",
      "description":
          "The concept of databinding is quite simple; It allows you to 'bind'..."
    },
    {
      "image": "android",
      "title": "Search in Android",
      "description":
          "So the search is crucial factor on how usable your application..."
    },
    {
      "image": "java",
      "title": "Java Lambda Expressions",
      "description":
          "Lambda Expressions are nameless functions given as constant values..."
    },
    {
      "image": "hashtag",
      "title": "Databinding in C# and .NET",
      "description":
          "The concept of databinding is quite simple; It allows you to 'bind'..."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My blog'),
        ),
        drawer: MyDrawer(),
        body: GridViewCards(items: articles, more: true));
  }
}
