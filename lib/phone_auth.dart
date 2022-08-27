import 'package:flutter/material.dart';
import 'package:liveasy_in/opt.dart';
import 'package:liveasy_in/waves.dart';

class phoneAuth extends StatefulWidget {
  const phoneAuth({Key? key}) : super(key: key);

  @override
  State<phoneAuth> createState() => _phoneAuthState();
}

class _phoneAuthState extends State<phoneAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Please enter your mobile number",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "You’ll receive a 4 digit code\n    "
                "\t\t\t   to verify next.",
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 36, 36, 0),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  // maxLength: 10,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Mobile Number",
                    prefixIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 6),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.asset('assets/india 2.png'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: const Text(
                                  "+91",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "-",
                                style: const TextStyle(fontSize: 22),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 13.0, horizontal: 10.0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 25, 36, 0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        //   MaterialPageRoute(builder: (context) => Register())
                        MaterialPageRoute(builder: (context) => otp()),
                      );
                    },
                    child: const Text(
                      "CONTINUE",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(46, 59, 98, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
