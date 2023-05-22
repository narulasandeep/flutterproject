import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutterproject/pages/status_page.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    String cardNumber = '1234 2143 1561';
    String expiryDate = '02/23';
    String cardHolderName = 'Tommy Berns';
    String cvvCode = '';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
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
              const SizedBox(height: 20,),
              Row(
                children: const [
                  SizedBox(width: 8,),
                  Text('Balance',style: TextStyle(
                      fontSize: 25
                  ),),
                  SizedBox(width: 20,),
                  Text('\$567,57',style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
             const  SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  CircleIcons(icon: Icons.add,),
                  SizedBox(width: 18,),
                  CircleIcons(icon: Icons.search),
                  SizedBox(width: 18,),
                  CircleIcons(icon: Icons.analytics_outlined)
                ],
              ),
              const  SizedBox(height: 10),
              CreditCardWidget(
                cardBgColor: Colors.green,
                onCreditCardWidgetChange:(CreditCardBrand creditCardBrand) {},
                customCardTypeIcons: <CustomCardTypeIcon>[
                  CustomCardTypeIcon(
                    cardType: CardType.mastercard,
                    cardImage: Image.asset(
                      'assets/mastercard.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                ],
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: false, //true when you want to show cvv(back) view
              ),
              const SizedBox(height: 10,),
              CustomTile(text: 'My Cards',
              onTap: (){},),
             const Divider(color: Colors.grey,thickness: 1,),
              CustomTile(text: 'Transactions',onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const StatusPage()));
              },),

             const Divider(color: Colors.grey,thickness: 1,),
            ],
          ),
        ),
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


class CustomTile extends StatelessWidget {
   CustomTile({
    super.key, required this.text, required this.onTap
  });
String text;
VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Text(text,style:const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
      trailing:   IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: onTap,


      ),

    );
  }
}

class CircleIcons extends StatelessWidget {
  const CircleIcons({super.key,required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.grey.shade200,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: Icon(icon,color: Colors.blue.shade700,size: 50,),
      ),
    );
  }
}
