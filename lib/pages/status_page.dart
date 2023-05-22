import 'package:flutter/material.dart';
class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 3;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              elevation: 0,

              backgroundColor: Colors.blue.shade700,
              leading:

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(

                  splashRadius: 1,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios,size: 35,
                  ),

                ),
              ),


              actions: const[
                Padding(
                  padding:  EdgeInsets.all(15.0),
                  child:   Icon(Icons.list_outlined,size:39 ,),
                )
              ],
            )

        ),
      body: Column(
mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [

          Row(
            children: [
              const SizedBox(width: 10,),

              const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person_outline,size: 80,))

              ),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  Text('Tommy Berns',
                    style: TextStyle(
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                  Row(
                    children:  const [
                      Text('Los Angeles',style: TextStyle(
                          fontSize: 20
                      ),),
                      Icon(Icons.location_on_outlined,color: Colors.green,),

                    ],
                  ),
                  const SizedBox(height: 20,)
                ],
              )
            ],
          ),
          Align(
            child: Stack(
              children:[ CircleAvatar(
                radius: 150,
                backgroundColor: Colors.blue.shade300,

                child: CircleAvatar(
                  radius:147,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 145,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 138,
                        backgroundColor: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const[
                            Text('Balance',style: TextStyle(color: Colors.black,fontSize: 40),),
                            Text('\$567,57',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),
                            ),
                                               ],
                        ),
                      ),
                    ),

                  ),
                ),
              ),
                const Positioned(
                    top: 5,
                    right: 20,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.analytics,size: 50,
                      color: Colors.blue,),
                    ))
              ]),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: const[
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 15,),
                    Text('INCOMES',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                    ),),
                  ],),
                  Row(children: const[
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 15,),
                    Text('EXPENSES',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                    ),)
                  ],),

                ],
              ),
            ),
            Padding(

              padding: const EdgeInsets.fromLTRB(25, 0, 25, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                  Text('309',style: TextStyle(fontSize: 60),),
                  Text('234',style: TextStyle(fontSize: 60),)
                ],),
            )
          ],),


        ],
      ),
        bottomNavigationBar: BottomNavigationBar(


            backgroundColor: Colors.grey,
            selectedItemColor: Colors.blue.shade900,
            unselectedItemColor: Colors.grey.shade700,
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.analytics_outlined,size: 40,),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.currency_bitcoin,size: 40),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.paragliding_sharp,size: 40),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,size: 40),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,size: 40),
                  label: ''
              ),
            ])
    );
  }
}
