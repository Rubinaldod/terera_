import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:terera_starter/service/client_sdk_service.dart';
import 'homePage.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:at_utils/at_logger.dart';
import 'package:terera_starter/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  static final id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  String atSign;
  var atClientPreference;
  var _logger = AtSignLogger('Terera');
  @override
  void initState() {
    ClientSdkService.getInstance()
        .getAtClientPreference()
        .then((value) => atClientPreference = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: Expanded(
          child: Image(
            image: AssetImage('images/icon2.png'),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Text(
                'Login using your @sign credential...',
                style: TextStyle(
                  fontSize: 20.0,
                ),
                //textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: '@sign...',
                    labelStyle: TextStyle(fontSize: 18.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () async {
                    Onboarding(
                      context: context,
                      atClientPreference: atClientPreference,
                      domain: MixedConstants.ROOT_DOMAIN,
                      onboard: (value, atsign) {
                        atSign = atsign;
                        ClientSdkService.getInstance().atsign = atsign;
                        ClientSdkService.getInstance().atClientServiceMap =
                            value;
                        ClientSdkService.getInstance().atClientServiceInstance =
                            value[atsign];
                        _logger.finer('Successfully onboarded $atsign');
                      },
                      onError: (error) {
                        _logger.severe('Onboarding throws $error error');
                      },
                      nextScreen: HomePage(),
                    );
                  },
                  // Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              //child: Inkwell(
              child: InkWell(
                child: Text(
                  "Don't have an @sign?",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.blue,
                  ),
                ),
                onTap: () => launch('https://atsign.com/get-an-sign/'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
