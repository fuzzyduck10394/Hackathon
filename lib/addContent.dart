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
        
        key: Key("addCOn"),
        appBar: AppBar(
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150,),
                Text("Nazwa eventu"),
                FormBuilder(
                    child:  FormBuilderTextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                      textAlign: TextAlign.left,
                        name: 'text',
                        onChanged: (val) {
                            print(val); // Print the text value write into TextField
                        },
                    ),
                ),
                
                
                SizedBox(height: 20,),
                Text("Data eventu"),
                FormBuilder(
                    child:  FormBuilderDateTimePicker(
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                      textAlign: TextAlign.left,
                        name: 'datetime',
                        onChanged: (val) {
                            print(val); // Print the text value write into TextField
                        },
                    ),
                ),
          
                SizedBox(height: 20,),
                Text("Ilosc uczestnikow"),
                FormBuilder(
                    child:  FormBuilderTextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                      textAlign: TextAlign.left,
                      initialValue: ("0"),                  
                        name: 'ampeaople',
                        onChanged: (val) {
                            print(val); // Print the text value write into TextField
                        },
                    ),
                ),
                SizedBox(height: 20,),
                Text("Opis"),
                FormBuilder(
                    child:  FormBuilderTextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                      
                      textAlign: TextAlign.left,             
                        name: 'apd',
                        onChanged: (val) {
                            print(val); // Print the text value write into TextField
                        },
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:60.0, bottom: 20),
                  child: Text("Wybierz kategorie" ),
                ),
                SimpleGroupedChips<int>(
                        controller: controller,
                        values: [1,2,3,4,5],
                        itemsTitle: ["Eventy" ,"Wsparcie","Cos","Place"],
                        chipGroupStyle: ChipGroupStyle.minimize(
                            selectedColorItem: Colors.grey,
                            textColor: Colors.white,
                             backgroundColorItem: orange,
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
                      child: Text("Zaakceptuj", style: TextStyle(fontSize:14),)
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
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
