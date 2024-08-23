import 'dart:math';
import 'package:exer/rating.dart';
import 'package:exer/support.dart';
import 'package:flutter/material.dart';
// import 'dart:random';

// void main() {
//   runApp(HotelMenuApp());
// }

class HotelMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    MenuBody(), // Home screen (Menu)
    MyCartScreen(), // My Cart screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hotel Menu',
        ),
      ),
      drawer: AppDrawer(), // Drawer for navigation
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Hotel Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.home),
          //   title: Text('Home'),
          //   onTap: () {
          //     Navigator.pop(context);
          //     // Close the drawer and stay on the home screen
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Ratings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rating()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text('Customer Care'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Support()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RatingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratings'),
      ),
      body: Center(
        child: Text(
          'Ratings Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class CustomerCareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Care'),
      ),
      body: Center(
        child: Text(
          'Customer Care Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class MenuBody extends StatefulWidget {
  @override
  _MenuBodyState createState() => _MenuBodyState();
}

class _MenuBodyState extends State<MenuBody> {
  final List<MenuItem> mostPopularItems = [
    MenuItem(name: 'Grilled Chicken', image: 'assets/images/grilled_chicken.jpg', rating: getRandomRating(), price: 1299),
    MenuItem(name: 'Cheesecake', image: 'assets/images/cheesecake.jpg', rating: getRandomRating(), price: 699),
    MenuItem(name: 'Pasta Alfredo', image: 'assets/images/pasta_alfredo.jpg', rating: getRandomRating(), price: 1499),
    MenuItem(name: 'Tiramisu', image: 'assets/images/tiramisu.jpg', rating: getRandomRating(), price: 799),
    MenuItem(name: 'Wine', image: 'assets/images/wine.jpg', rating: getRandomRating(), price: 1999),
  ];

  final List<MenuCategory> menuCategories = [
    MenuCategory(
      title: 'Appetizers',
      items: [
        MenuItem(name: 'Spring Rolls', image: 'assets/images/spring_rolls.jpg', rating: getRandomRating(), price: 599),
        MenuItem(name: 'Garlic Bread', image: 'assets/images/garlic_bread.jpg', rating: getRandomRating(), price: 499),
        MenuItem(name: 'Bruschetta', image: 'assets/images/bruschetta.jpg', rating: getRandomRating(), price: 649),
      ],
    ),
    MenuCategory(
      title: 'Main Courses',
      items: [
        MenuItem(name: 'Grilled Chicken', image: 'assets/images/grilled_chicken.jpg', rating: getRandomRating(), price: 1299),
        MenuItem(name: 'Pasta Alfredo', image: 'assets/images/pasta_alfredo.jpg', rating: getRandomRating(), price: 1499),
        MenuItem(name: 'Beef Steak', image: 'assets/images/beef_steak.jpg', rating: getRandomRating(), price: 1899),
      ],
    ),
    MenuCategory(
      title: 'Desserts',
      items: [
        MenuItem(name: 'Cheesecake', image: 'assets/images/cheesecake.jpg', rating: getRandomRating(), price: 699),
        MenuItem(name: 'Tiramisu', image: 'assets/images/tiramisu.jpg', rating: getRandomRating(), price: 799),
        MenuItem(name: 'Ice Cream', image: 'assets/images/ice_cream.jpg', rating: getRandomRating(), price: 499),
      ],
    ),
    MenuCategory(
      title: 'Drinks',
      items: [
        MenuItem(name: 'Coke', image: 'assets/images/coke.jpg', rating: getRandomRating(), price: 299),
        MenuItem(name: 'Lemonade', image: 'assets/images/lemonade.jpg', rating: getRandomRating(), price: 349),
        MenuItem(name: 'Wine', image: 'assets/images/wine.jpg', rating: getRandomRating(), price: 1999),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Most Popular', style: Theme.of(context).textTheme.titleLarge),
          ),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mostPopularItems.length,
              itemBuilder: (context, index) {
                final item = mostPopularItems[index];
                return MenuItemCard(item: item);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Menu', style: Theme.of(context).textTheme.titleLarge),
          ),
          ...menuCategories.map((category) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(category.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Container(
                    height: 180, // Adjust height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.items.length,
                      itemBuilder: (context, index) {
                        final item = category.items[index];
                        return MenuItemCard(item: item);
                      },
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class MenuItemCard extends StatefulWidget {
  final MenuItem item;

  MenuItemCard({required this.item});

  @override
  _MenuItemCardState createState() => _MenuItemCardState();
}

class _MenuItemCardState extends State<MenuItemCard> {
  bool _isSelected = false;

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
      if (_isSelected) {
        Cart.addItem(widget.item);
      } else {
        Cart.removeItem(widget.item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: _toggleSelection,
        child: Container(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.item.image, width: 150, height: 100, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.item.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: List.generate(5, (starIndex) {
                    return Icon(
                      Icons.star,
                      color: starIndex < widget.item.rating ? Colors.amber : Colors.grey,
                      size: 16,
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('₹${widget.item.price.toString()}', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ),
              if (_isSelected)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.check_circle, color: Colors.green),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cart {
  static final List<MenuItem> _items = [];

  static List<MenuItem> get items => _items;

  static void addItem(MenuItem item) {
    _items.add(item);
  }

  static void removeItem(MenuItem item) {
    _items.remove(item);
  }

  static double get total {
    return _items.fold(0, (sum, item) => sum + item.price);
  }
}

class MyCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Cart.items.length,
              itemBuilder: (context, index) {
                final item = Cart.items[index];
                return ListTile(
                  leading: Image.asset(item.image, width: 50, height: 50, fit: BoxFit.cover),
                  title: Text(item.name),
                  subtitle: Text('₹${item.price.toString()}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: () {
                      Cart.removeItem(item);
                      (context as Element).reassemble(); // Refresh UI
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Total: ₹${Cart.total.toString()}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class MenuCategory {
  final String title;
  final List<MenuItem> items;

  MenuCategory({required this.title, required this.items});
}

class MenuItem {
  final String name;
  final String image;
  final double rating;
  final double price;

  MenuItem({required this.name, required this.image, required this.rating, required this.price});
}

// Helper function to generate random ratings
double getRandomRating() {
  final random = Random();
  return (random.nextDouble() * 5).clamp(0, 5).roundToDouble();
}
