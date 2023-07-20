class Character{
  int userId;
  int id;
  String title;

  Character.fromJson(Map json)
   : userId =json['userId'],
     id =json['id'],
     title =json['title'];

   Map toJson() {
    return {
      'userId' :userId,
      'id': id,
      'title': title,
    };
  }
}