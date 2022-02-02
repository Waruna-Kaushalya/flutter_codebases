import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ElavatedButtonWidget extends StatelessWidget {
  //?https://stackoverflow.com/questions/67656140/using-type-function-and-pass-it-into-elevatedbutton-onpressed-flutter
  //? onPressed is a type of VoidCallback
  final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const ElavatedButtonWidget({
    Key? key,
    required this.buttonLabel,
    required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //? if not mentioned aligment button will move to the edge
      //? of the list view
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      // color: Colors.green,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          //? Button height and width
          minimumSize: const Size(
            300,
            50,
          ),
          textStyle: const TextStyle(fontSize: 20),
          primary: Colors.blue[200], //? Backgroud
          onPrimary: Colors.black, //? Font color
          //? Button circular boder radiaus a
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(buttonLabel.toString()),
        onPressed: onCustomButtonPressed,
      ),
    );
  }
}

class OutLinedButtonWidget extends StatelessWidget {
  final VoidCallback onCustomButtonPressed;
  final String buttonLabel;
  const OutLinedButtonWidget({
    Key? key,
    required this.onCustomButtonPressed,
    required this.buttonLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //? if not mentioned aligment button will move to the edge
      //? of the list view
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          //? insted using minimumSize property button height and widht define //? using padding property
          // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          //? Button height and width
          minimumSize: const Size(200, 50),
          //? only define height and button expanded to ouline of padding
          // minimumSize: const Size.fromHeight(50),
          textStyle: const TextStyle(fontSize: 20),
          //? Font color
          primary: Colors.blue, //? Font color
          side: const BorderSide(
            width: 5, //? outline size
            color: Colors.blue, //? outline color
          ),
          //? boder rounded
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(buttonLabel.toString()),
        onPressed: onCustomButtonPressed,
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //? if not mentioned aligment button will move to the edge
      //? of the list view
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: TextButton(
        style: TextButton.styleFrom(
          //? insted using minimumSize property button height and widht define //? using padding property
          // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          //? Button height and width
          minimumSize: const Size(200, 50),
          //? only define height and button expanded to ouline of padding
          // minimumSize: const Size.fromHeight(50),
          textStyle: const TextStyle(fontSize: 20),
          primary: Colors.black, //? Font color

          //? In TextButton we can define outline like as Outlined Button
          // side: const BorderSide(
          //   width: 5, //? outline size
          //   color: Colors.blue, //? outline color
          // ),
        ), //? Font color
        child: const Text("Elevated Button"),
        onPressed: () =>
            Fluttertoast.showToast(msg: "Pressed Text Button", fontSize: 15),
      ),
    );
  }
}

class IconsButtonWidget extends StatelessWidget {
  const IconsButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //? if not mentioned aligment button will move to the edge
      //? of the list view
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: IconButton(
        icon: const Icon(
          Icons.settings,
          color: Colors.red,
        ),
        iconSize: 40,
        onPressed: () =>
            Fluttertoast.showToast(msg: "Pressed Icon Button", fontSize: 15),
      ),
    );
  }
}

class ElavatedButtonWithIconWidget extends StatelessWidget {
  const ElavatedButtonWithIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //? if not mentioned aligment button will move to the edge
      //? of the list view
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: ElevatedButton.icon(
        //? if you need add icon after the text flip icon and label
        icon: const Icon(Icons.settings),
        label: const Text("Elavated Butoon with icon"),
        style: ElevatedButton.styleFrom(
          //? Button height and width
          minimumSize: const Size(
            200,
            50,
          ),
          textStyle: const TextStyle(fontSize: 20),
          primary: Colors.orange, //? Backgroud
          onPrimary: Colors.black, //? Font color
        ),
        onPressed: () => Fluttertoast.showToast(
            msg: "Pressed Elevated Button", fontSize: 15),
      ),
    );
  }
}

class TextButtonWithIconWidget extends StatelessWidget {
  const TextButtonWithIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //? if not mentioned aligment button will move to the edge
      //? of the list view
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        //? if you need add icon after the text flip icon and label
        icon: const Icon(Icons.settings),
        label: const Text("Elavated Butoon with icon"),
        style: TextButton.styleFrom(
          //? Button height and width
          minimumSize: const Size(
            200,
            50,
          ),
          textStyle: const TextStyle(fontSize: 20),
          primary: Colors.black87, //? Font color
          // onPrimary: Colors.black,
        ),
        onPressed: () => Fluttertoast.showToast(
            msg: "Pressed Elevated Button", fontSize: 15),
      ),
    );
  }
}

class OutlinedWithIconWidget extends StatelessWidget {
  const OutlinedWithIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //? if not mentioned aligment button will move to the edge
      //? of the list view
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: OutlinedButton.icon(
        //? if you need add icon after the text flip icon and label
        icon: const Icon(Icons.settings),
        label: const Text("Elavated Butoon with icon"),
        style: TextButton.styleFrom(
          //? Button height and width
          minimumSize: const Size(
            200,
            50,
          ),
          textStyle: const TextStyle(fontSize: 20),
          primary: Colors.black87, //? Font color
          // onPrimary: Colors.black,
          side: const BorderSide(
            width: 5, //? outline size
            color: Colors.blue, //? outline color
          ),
        ),
        onPressed: () => Fluttertoast.showToast(
            msg: "Pressed Elevated Button", fontSize: 15),
      ),
    );
  }
}

class GradientTextButton extends StatelessWidget {
  final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const GradientTextButton({
    Key? key,
    required this.buttonLabel,
    required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150),
      child: Container(
          alignment: Alignment.center,
          // padding: const EdgeInsets.all(10),
          // width: 100,
          height: 50.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5),
              ],
            ),
          ),
          child: TextButton(
            child: const Text("vdfvdvdv"),
            onPressed: onCustomButtonPressed,
            style: TextButton.styleFrom(
              //? insted using minimumSize property button height and widht define //? using padding property
              // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              //? Button height and width
              // minimumSize: const Size(100, 50),
              //? only define height and button expanded to ouline of padding
              // minimumSize: const Size.fromHeight(50),
              textStyle: const TextStyle(fontSize: 20),
              primary: Colors.white, //? Font color

              //? In TextButton we can define outline like as Outlined Button
              // side: const BorderSide(
              //   width: 5, //? outline size
              //   color: Colors.blue, //? outline color
              // ),
            ), //? Font color
          )),
    );
  }
}
