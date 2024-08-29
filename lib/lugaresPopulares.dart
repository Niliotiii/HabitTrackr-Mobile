import 'package:flutter/material.dart';
import 'home.dart';

class PopularPlacesScreen extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: 'Espanha',
      location: 'Madrid, Espanha',
      rating: 4.7,
      price: 'R\$6459',
      imageUrl: 'assets/images/france.png',
    ),
    Place(
      name: 'França',
      location: 'Paris, França',
      rating: 4.8,
      price: 'R\$6894',
      imageUrl: 'assets/images/france.png',
    ),
    Place(
      name: 'Peru',
      location: 'Machu Picchu, Peru',
      rating: 4.3,
      price: 'R\$1761',
      imageUrl: 'assets/images/france.png',
    ),
    Place(
      name: 'Egito',
      location: 'Pirâmide de Gizé, Egito',
      rating: 4.5,
      price: 'R\$8857',
      imageUrl: 'assets/images/france.png',
    ),
    Place(
      name: 'Aonang Villa Resort',
      location: 'Bastola, Islãmpur',
      rating: 4.3,
      price: 'R\$761',
      imageUrl: 'assets/images/france.png',
    ),
    Place(
      name: 'Rangauti Resort',
      location: 'Sylhet, Airport Road',
      rating: 4.5,
      price: 'R\$857',
      imageUrl: 'assets/images/france.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        title: Text('Lugares populares'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Todos os lugares populares',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.75,
                ),
                itemCount: places.length,
                itemBuilder: (context, index) {
                  final place = places[index];
                  return PlaceCard(place: place);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Place {
  final String name;
  final String location;
  final double rating;
  final String price;
  final String imageUrl;

  Place({
    required this.name,
    required this.location,
    required this.rating,
    required this.price,
    required this.imageUrl,
  });
}

class PlaceCard extends StatelessWidget {
  final Place place;

  const PlaceCard({required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    place.imageUrl,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        place.location,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          Text(
                            place.rating.toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${place.price}/Pessoa',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8,
              right: 8,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(72, 27, 30, 40),
                child: IconButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}