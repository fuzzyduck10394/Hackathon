import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';

class AddContent extends StatefulWidget {
  const AddContent({super.key});

  @override
  State<AddContent> createState() => _AddContentState();
}

class _AddContentState extends State<AddContent> {
  GroupController controller = GroupController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 241, 241),
        key: Key("addCOn"),
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          centerTitle: true,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),

          title: Text(
            'Dodaj zgłoszenie',
            style: TextStyle(color: Colors.white)
          ),

          backgroundColor: orange,
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70,),
      
                Text(
                  "Nazwa wydarzenia:",
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),

                SizedBox(height:12),

                FormBuilder(
                    child:  FormBuilderTextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                      ),
                      textAlign: TextAlign.left,
                        name: 'text',
                        onChanged: (val) {
                            print(val); // Print the text value write into TextField
                        },
                    ),
                ),
                
                
                SizedBox(height: 20,),
                Text(
                  "Data wydarzenia:",
                  style: TextStyle(
                    fontSize: 20,
                  )

                ),


                SizedBox(height:12),
                FormBuilder(
                    child:  FormBuilderDateTimePicker(
                      decoration: InputDecoration(
                        
                        border: OutlineInputBorder(),

                      ),
                      textAlign: TextAlign.left,
                        name: 'datetime',
                        onChanged: (val) {
                            print(val); // Print the text value write into TextField
                        },
                    ),
                ),
          
                SizedBox(height: 20,),
                
                Text(
                  "Ilość uczestników:",
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),


                SizedBox(height:12),

                FormBuilder(
                  child:  FormBuilderTextField(
                    decoration: InputDecoration(
                        
                        border: OutlineInputBorder(),
                        

                    ),

                    textAlign: TextAlign.left,

                    // initialValue: ("0"),                  

                    name: 'ampeaople',
                    onChanged: (val) {
                      print(val); // Print the text value write into TextField
                    },
                  ),
                ),
                SizedBox(height: 20,),
                
                Text(
                  "Opis:",
                  style: TextStyle(
                    fontSize: 20,
                  )

                ),

                SizedBox(height:12),
                FormBuilder(
                    child:  FormBuilderTextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                      ),
                      // initialValue: ("Ok. 100 - 200 znaków"),            
                      textAlign: TextAlign.left,             
                        name: 'apd',
                        onChanged: (val) {
                            print(val); // Print the text value write into TextField
                        },
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:60.0, bottom: 20),
                    child: Text(
                    "Wybierz kategorie:",
                      style: TextStyle(
                        fontSize: 20,
                      )
                    ),
                  ),
                  SimpleGroupedChips<int>(
                    controller: controller,
                    values: [1,2,3,4,5,6],
                    itemsTitle: ["Zwierzęta" ,"Jedzenie","Impreza", "Sprzątanie", "Organizacja", "Dla niepełnoletnich", ],

                    chipGroupStyle: ChipGroupStyle.minimize(
                      selectedColorItem: lighter_blue,
                      textColor: Colors.white,
                      backgroundColorItem: light_blue,
                      itemTitleStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                
                  SizedBox(height: 50,),

                  Center(
                    child: ElevatedButton(
                      onPressed: () => (),
                      child: Container(
                        
                        padding: EdgeInsets.all(20),

                        child: Text(
                          "Zaakceptuj", 
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,

                          ),
                        )
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: orange,
                      )
                      
                    ),
                  )
                         
              ],
                
            ),
          ),
        ),
    );
  }
}
