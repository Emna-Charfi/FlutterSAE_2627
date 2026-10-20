class Film {
  final String name;
  final String description;
  final int price;
  final String image;
  Film(this.name,this.description,this.price,this.image);

   // Sérialisation 

  Map<String, dynamic> toJson(){
      return {
        'id': price, 'title': name, 'image': image
      };
  }

  //Désérialisation 
  static Film fromJson(Map<String,dynamic> jsonData){
    return Film(jsonData['titre'], jsonData['titre'], 150,jsonData['image'] );
  }

  //toString 

    @override
  String toString() {
   
    return "Name: $name ,price: $price";
  }

}