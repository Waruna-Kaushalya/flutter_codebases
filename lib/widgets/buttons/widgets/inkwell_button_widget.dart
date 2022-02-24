import 'package:flutter/material.dart';

class InkWellTextWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellTextWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Material(
        color: Colors.blue,
        child: InkWell(
          onTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.black26,
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 200,
            child: Text(
              buttonLabel,
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class InkWellTextConnerRoundedWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellTextConnerRoundedWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Material(
        color: Colors.blue,

        /// both line needed when conner rounded
        borderRadius: BorderRadius.circular(28),

        /// this line prevent rectangle shadow under widget when long press
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.black26,
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 200,
            child: Text(
              buttonLabel,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InkWellImageWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellImageWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},

        /// when long press this collor iffect diaply
        splashColor: Colors.white10,
        child: Ink.image(
          image: const AssetImage('assets/images/image2.jpg'),
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class InkWellImageConnerRoundedWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellImageConnerRoundedWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Material(
        /// Background color
        color: Colors.blue,

        /// Shadow around button
        elevation: 8,

        /// both line needed when conner rounded
        borderRadius: BorderRadius.circular(28),

        /// this line prevent rectangle shadow under widget when long press
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          onLongPress: () {},
          onDoubleTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.white12,
          child: Ink.image(
            image: const AssetImage('assets/images/image2.jpg'),
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class InkWellImageOverTextWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellImageOverTextWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},

        /// when long press this collor iffect diaply
        splashColor: Colors.white12,
        child: Ink.image(
          image: const AssetImage('assets/images/image2.jpg'),
          height: 200,
          width: 200,
          fit: BoxFit.cover,
          child: const Center(
            child: Text(
              "Center",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InkWellImageUnderTextWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellImageUnderTextWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Material(
        /// Background color
        color: Colors.blue,

        /// Shadow around button
        elevation: 8,
        child: InkWell(
          onTap: () {},
          onLongPress: () {},
          onDoubleTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.white12,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                image: const AssetImage('assets/images/image2.jpg'),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const Text(
                "Center",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InkWellImageUnderTextConnerRoundedWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellImageUnderTextConnerRoundedWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Material(
        /// Background color
        color: Colors.blue,

        /// Shadow around button
        elevation: 8,

        /// both line needed when conner rounded
        borderRadius: BorderRadius.circular(28),

        /// this line prevent rectangle shadow under widget when long press
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          onLongPress: () {},
          onDoubleTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.white12,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                image: const AssetImage('assets/images/image2.jpg'),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const Text(
                "Center",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InkWellImageSideTextConnerRoundedWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellImageSideTextConnerRoundedWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Material(
        /// Background color
        color: Colors.blue,

        /// Shadow around button
        elevation: 8,

        /// both line needed when conner rounded
        borderRadius: BorderRadius.circular(28),

        /// this line prevent rectangle shadow under widget when long press
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          onLongPress: () {},
          onDoubleTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.white12,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                image: const AssetImage('assets/images/image2.jpg'),
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Center",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
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

class InkWellCircleImageWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellCircleImageWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Material(
        /// Background color
        color: Colors.blue,

        /// Shadow around button
        elevation: 8,

        /// both line needed when conner rounded
        // borderRadius: BorderRadius.circular(28),
        /// insted of using borderRadious use CircleBorder to Circle option
        shape: const CircleBorder(),

        /// this line prevent rectangle shadow under widget when long press
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          // onLongPress: () {},
          onDoubleTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.white12,
          child: Ink.image(
            image: const AssetImage('assets/images/image2.jpg'),
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class InkWellCircleImageWithBorderWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellCircleImageWithBorderWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Material(
        /// Background color
        color: Colors.blue,

        /// Shadow around button
        elevation: 8,

        /// both line needed when conner rounded
        // borderRadius: BorderRadius.circular(28),
        /// insted of using borderRadious use CircleBorder to Circle option
        shape: const CircleBorder(),

        /// this line prevent rectangle shadow under widget when long press
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          // onLongPress: () {},
          onDoubleTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.white12,

          /// This container for border
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
              shape: BoxShape.circle,
            ),
            child: Ink.image(
              image: const AssetImage('assets/images/image2.jpg'),
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class InkWellImageWithRoundedBorderWidget extends StatelessWidget {
  // final VoidCallback onCustomButtonPressed;
  final String buttonLabel;

  const InkWellImageWithRoundedBorderWidget({
    Key? key,
    required this.buttonLabel,
    // required this.onCustomButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Material(
        /// Background color
        color: Colors.blue,

        /// Shadow around button
        elevation: 8,

        /// both line needed when conner rounded
        // borderRadius: BorderRadius.circular(28),
        /// change both shape property in Material Widget and container
        borderRadius: BorderRadius.circular(28),

        /// this line prevent rectangle shadow under widget when long press
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          // onLongPress: () {},
          onDoubleTap: () {},

          /// when long press this collor iffect diaply
          splashColor: Colors.white12,

          /// This container for border
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),

              /// change both shape property in Material Widget and container
              borderRadius: BorderRadius.circular(28),
            ),
            child: Ink.image(
              image: const AssetImage('assets/images/image2.jpg'),
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
