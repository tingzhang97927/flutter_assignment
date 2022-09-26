import 'package:flutter/material.dart';

class Data{
  late String cityName;
  late String cityImage;
  late String cityDescription;
  Data({required this.cityImage,required this.cityName,required this.cityDescription});
}

List<Data> datalist = [
  Data(cityName: "London",
      cityImage: "https://cdn.londonandpartners.com/-/media/images/london/visit/things-to-do/sightseeing/london-attractions/coca-cola-london-eye/the-london-eye-2-640x360.jpg",
      cityDescription: "The capital of the UK."
  ),
  Data(cityName: "Beijing",
      cityImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqSc-lEh-x1S3FPcaVOdeiPyqtu6QSD8P7vQ&usqp=CAU",
      cityDescription: "The capital of China."
  ),
  Data(cityName: "Paris",
      cityImage: "https://images.adsttc.com/media/images/5d44/14fa/284d/d1fd/3a00/003d/large_jpg/eiffel-tower-in-paris-151-medium.jpg?1564742900",
      cityDescription: "The capital of France."
  ),
  Data(cityName: "New Yorl",
      cityImage: "https://www.travelandleisure.com/thmb/JWO4CNVDNSR-aLDBT93jVlHV1DQ=/1800x1200/filters:fill(auto,1)/new-york-city-evening-NYCTG0221-52492d6ccab44f328a1c89f41ac02aea.jpg",
      cityDescription: "The capital of the USA."
  ),
];