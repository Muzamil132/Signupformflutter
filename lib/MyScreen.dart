import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {

  bool user=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    body: SingleChildScrollView(
          child: Container(
           
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
             SizedBox(
               height:70
             ),
                Container(
                  alignment: Alignment.center,
                 child:!user?Text('Sign Up',style: TextStyle(
                   fontSize: 40
                   ,color:Colors.grey
                 ),):Text('Sign In',style: TextStyle(
                   fontSize: 40
                   ,color:Colors.grey
                 ),)

                ),
                SizedBox(height:60),
        
           textField("User name"),
           SizedBox(height:20),
           textField("Email"),
           SizedBox(height:20),
        
           if(!user) textField('Password'),
           if(!user) SizedBox(height:20),
       
          

           Container(  
             height:50,
             width: double.infinity,
             decoration: BoxDecoration(
            
               color: Colors.white30
              
             ),
             child: ElevatedButton(  
               style: ElevatedButton.styleFrom(
                 primary:Colors.blue,
                 shape:RoundedRectangleBorder(
                   borderRadius:BorderRadius.circular(15)
                 )
              
               ),
               onPressed: (){}, child: !user?Text('Sign Up'): Text('Sign In')      )),
               Row(
                 children: [
                  if(!user)Text('Existing Account ?'),

                  TextButton(onPressed: (){
                    setState(() {
                      user=!user;
                    });
                  }, child: !user?Text('Sign In'):Text('Create Account'))
                 ],
               ),
               
          ]
        ),
      ),
    ),
      
    );
  }
}

Container textField(String hint){

  return Container(
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        
          TextFormField(
            
            decoration:InputDecoration(
              filled: true,
              fillColor: Colors.grey[50],
            
              hintText: hint,
            
             
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color:Colors.grey)
            )
            ,focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15),
               borderSide: BorderSide(width:2,color:Colors.blue[300])

            )
            )
          )

      ],
    )
  );
}