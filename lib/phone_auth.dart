import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class phoneAuth extends StatefulWidget {
  const phoneAuth({Key? key}) : super(key: key);

  @override
  State<phoneAuth> createState() => _phoneAuthState();
}

class _phoneAuthState extends State<phoneAuth> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Please enter your mobile number",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You’ll receive a 4 digit code\n    "
                "\t\t\t   to verify next.",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: TextFormField(


                  textInputAction: TextInputAction.done,
                  maxLength: 10,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal,
                  color: Colors.black
                  ),
                  decoration: InputDecoration(
                    hintText: "Mobile Number",

                    prefixIcon: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () async{
                             final code =  await countryPicker.showPicker(context: context);
                             setState(() {
                               countryCode = code;
                             });
                            },
                            child: Row(
                              children: [
                                Container(
                                  child: countryCode!=null ? countryCode!.flagImage : null,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(

                                  child: Text(
                                    countryCode?.dialCode ?? "+1",
                                    style: TextStyle(

                                    color: Colors.black,
                                      fontSize: 22
                                  ),),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("-",
                                style: TextStyle(
                                  fontSize: 22
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // labelText: "Mobile Number",
                    // labelStyle: TextStyle(color: Colors.grey),
                    // prefixIcon: Icon(Icons.indis),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                      //borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                      //borderRadius: BorderRadius.circular(20),
                    ),



                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
