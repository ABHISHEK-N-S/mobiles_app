import 'package:flutter/material.dart';

class Home_mobiles extends StatelessWidget {
  final List<Map<String, Object>> categories = [
    {
      "id":"1",
      "title":"samsung",
      "price":"8000",
      "images":"assets/images/Apple-iPhone-11-PNG-Image.png"
    },
    {
      "id":"2",
      "title":"iphone",
      "price":"50000",
      "images":"assets/images/Apple-iPhone-11-PNG-Pic.png"
    },
    {
      "id":"3",
      "title":"realme",
      "price":"15000",
      "images":"assets/images/Apple-iPhone-11-Transparent-PNG.png"
    },
    {
      "id":"4",
      "title":"moto",
      "price":"20000",
      "images":"assets/images/Apple-iPhone-11-Transparent-PNG.png"
    },
    {
      "id":"5",
      "title":"Redmi",
      "price":"12000",
      "images":"assets/images/Apple-iPhone-12-PNG-Image.png"
    },
    {
      "id":"6",
      "title":"Nokia",
      "price":"6000",
      "images":"assets/images/Apple-iPhone-12-PNG-Photo.png"
    },
    {
      "id":"7",
      "title":"micromax",
      "price":"5000",
      "images":"assets/images/Apple-iPhone-12-Transparent-Images-PNG.png"
    },
    {
      "id":"8",
      "title":"IQ",
      "price":"25000",
      "images":"assets/images/Apple-iPhone-12-PNG-Photo.png"
    },
    {
      "id":"9",
      "title":"Htc",
      "price":"20000",
      "images":"assets/images/Mobile-Phone-Transparent-PNG.png"
    },
    {
      "id":"10",
      "title":"china",
      "price":"50000",
      "images":"assets/images/Mobile-Phone-PNG-HD.png"
    },
    // Add more categories here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title: Text("Exactus", style: TextStyle(color: Colors.cyan[900])),
        leading: Icon(Icons.menu), // Use an appropriate icon for your navigation drawer
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.camera_alt),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan[900],
              ),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                // Navigate to the home page
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Categories"),
              onTap: () {
                // Navigate to the categories page
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list_alt),
                contentPadding: EdgeInsets.all(20.0),
                hintText: "Search for mobiles",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),

          SizedBox(height: 15),
          Text(
            "Popular brands",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          CategoryRow(),
          SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];
                return Card(
                  child: Column(
                    children: [
                      Image.asset(
                        category["images"] as String,
                        height: 150,
                      ),
                      Text(category['title'].toString(),
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 9),
                      Text('Price: \$${category['price']}'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}

class CategoryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CategoryItem('Samsung'),
          CategoryItem('iPhone'),
          CategoryItem('Realme'),
          CategoryItem('Motorola'),
          CategoryItem('Redmi'),
          // Add more categories here
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String category;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle category item click
          print('Category: $category');
        },
        child: Column(
          children: <Widget>[
            Icon(Icons.category, size: 36.0, color: Colors.blue),
            SizedBox(height: 8.0),
            Text(
              category,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}


