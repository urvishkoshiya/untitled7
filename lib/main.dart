import 'package:flutter/material.dart';
import 'package:untitled7/description.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map> data = [

    {
      "name":"Pizza",
      "image":"https://thumbs.dreamstime.com/b/pizza-rustic-italian-mozzarella-cheese-basil-leaves-35669930.jpg",
      "des":"pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot."
      },
    {
      "name":"Burger",
      "image":"https://img.freepik.com/premium-photo/homemade-burger-with-beef-cheese-onion-marmalade-wooden-board-fast-food-concept-american-food_90258-3917.jpg?w=2000",
      "des":"A burger is a flat round mass of minced meat or vegetables, which is fried and often eaten in a bread roll."
    },

    {
      "name":"French Fries",
      "image":"https://static.toiimg.com/thumb/54659021.cms?imgsize=275086&width=800&height=800",
      "des":"french fries, also called chips, finger chips, fries, or French pommes frites, side dish or snack typically made from deep-fried potatoes that have been cut into various shapes, especially thin strips."
    },
    {
      "name":"Waffles",
      "image":"https://preppykitchen.com/wp-content/uploads/2019/08/waffles-feature-2.jpg",
      "des":"A waffle is a dish made from leavened batter or dough that is cooked between two plates that are patterned to give a characteristic size, shape, and surface impression. There are many variations based on the type of waffle iron and recipe used."
    },
    {
      "name":"Coffee",
      "image":"https://imgmedia.lbb.in/media/2020/04/5ea18dee1036c70c9363dacd_1587645934824.jpg",
      "des":"Coffee is a beverage brewed from the roasted and ground seeds of the tropical evergreen coffee plant. Coffee is one of the three most popular beverages in the world (alongside water and tea), and it is one of the most profitable international commodities."
    },
    {
      "name":"Cold Drinks",
      "image":"https://w0.peakpx.com/wallpaper/475/205/HD-wallpaper-coca-cola-golden.jpg",
      "des":"soft drink, any of a class of nonalcoholic beverages, usually but not necessarily carbonated, normally containing a natural or artificial sweetening agent, edible acids, natural or artificial flavours, and sometimes juice."
    },
    {
      "name":"SandWich",
      "image":"https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/twdohpmtfzsz6rzuq1bp",
      "des":"sandwich, in its basic form, slices of meat, cheese, or other food placed between two slices of bread. Although this mode of consumption must be as old as meat and bread, the name was adopted only in the 18th century for John Montagu, 4th earl of Sandwich."
    },
    {
      "name":"Dosa",
      "image":"https://images.pexels.com/photos/5560763/pexels-photo-5560763.jpeg?cs=srgb&dl=pexels-saveurs-secretes-5560763.jpg&fm=jpg",
      "des":"A dosa, also called dosai, dosey, or dosha, is a thin pancake in South Indian cuisine made from a fermented batter of ground black lentils and rice. Dosas are popular in South Asia as well as around the world. Dosas are served hot, often with chutney and sambar."
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Grid View"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => 
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp2(data[index]),),);
              },
              child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        data[index]["image"]
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(data[index]["name"],style: TextStyle(fontSize: 30,color: Colors.white),),
                )
              ],
          ),
        ),
            ),
      ),
    );
  }
}
