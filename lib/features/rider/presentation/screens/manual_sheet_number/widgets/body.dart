part of '../manual_sheet_number_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height * 0.7,
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    'Enter Delivery Sheet Number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextFieldContainer(
                  child: MyTextField(
                    hintText: 'Enter Sheet Number',
                    onChange: () {},
                  ),
                ),
                const SizedBox(height: 10),
                TextFieldContainer(
                  child: Button(child: const Text('Submit'), onPressed: () {}),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
