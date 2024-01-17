import 'dart:io';
import 'package:intl/intl.dart';

import 'string_constants.dart';

/*
* Date 15/01/2024
* this class will be removed later
* */
class Util {
  Util._();

  static String getBDTCurrencySymbol() {
    var format = NumberFormat.simpleCurrency(locale: Platform.localeName,name: StringConstants.bdtCurrency);
    return format.currencySymbol;
  }

  static const myListItems = [
    {
      "img": "https://media.istockphoto.com/id/1277731016/photo/cloud-computing-concept-communication-network.jpg?s=1024x1024&w=is&k=20&c=3GlrX7Xpk9GG5LJs8yW6nCBzMCbao64vVUUwg452VnU=",
      "title": "Machine Learning for Geeks",
      "details": "Mark Leu Zhu, Ming Kong",
      "rating": "4.5",
      "other_rat":"498",
      "price": "1999",
      "selling_rate":"assets/images/course_list_images/best_sell.jpg"
    },
    {
      "img": "https://media.istockphoto.com/id/1434542354/photo/a-female-chef-pouring-sauce-on-salad.jpg?s=1024x1024&w=is&k=20&c=Zh8JyhCEpxE2KLjVy9zauXxOXdvkfXjVqOiOAkQFFAc=",
      "title": "Cooking Essentials:Beginner Guide",
      "details": "Master Chef Jack Fraser",
      "rating": "4.6",
      "other_rat":"498",
      "price": "2999",
      "selling_rate":"assets/images/course_list_images/top_rated.jpg"
    },
    {
      "img": "https://media.istockphoto.com/id/1284922959/photo/python-inscription-against-laptop-and-code-background-learn-python-programming-language.jpg?s=1024x1024&w=is&k=20&c=4iq5RSUmwonciUHnmQqmslLJbC903Wx4dNC5JjCwmtA=",
      "title": "Python with Django for Beginners",
      "details": "Hussain AzmatUllah, Karim Saud",
      "rating": "4.0",
      "other_rat":"498",
      "price": "1199",
      "selling_rate":"assets/images/course_list_images/top_rated.jpg"
    },
    {
      "img": "https://plus.unsplash.com/premium_photo-1682309623835-d15358bcb195?q=80&w=1824&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Blockchain Bootcamp 2023",
      "details": "Pran Kumar, Atul Shah",
      "rating": "4.5",
      "other_rat":"498",
      "price": "1499",
      "selling_rate":"assets/images/course_list_images/best_sell.jpg"
    },
    {
      "img": "https://images.unsplash.com/photo-1596742578443-7682ef5251cd?q=80&w=1908&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "The Complete Android MasterClass",
      "details": "Stephen Chow, Zack Ryder",
      "rating": "4.2",
      "other_rat":"498",
      "price": "1999",
      "selling_rate":"assets/images/course_list_images/top_rated.jpg"
    },
    {
      "img": "https://images.unsplash.com/photo-1559757148-5c350d0d3c56?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Master Your Mindset & Brain",
      "details": "Anna Parkinsons, Steve Hewitt",
      "rating": "4.5",
      "other_rat":"498",
      "price": "1799",
      "selling_rate":"assets/images/course_list_images/best_sell.jpg",
    },
    {
      "img": "https://images.unsplash.com/photo-1612232134966-a9b076b9fbe7?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Emotional Intelligence & Com Skills",
      "details": "Anna Parkinsons, Steve Hewitt",
      "rating": "4.0",
      "other_rat":"498",
      "price": "1899",
      "selling_rate":"assets/images/course_list_images/top_rated.jpg"
    },
  ];

}
