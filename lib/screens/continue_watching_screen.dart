import 'package:flutter/material.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';

import '../components/certificate_viewer.dart';
import '../components/lists/continue_watching_list.dart';
import '../constants.dart';

class ContinueWatchingScreen extends StatelessWidget {
  const ContinueWatchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(34.0),
      ),
      color: kCardPopupBackgroundColor,
      boxShadow: const [
        BoxShadow(
          color: kShadowColor,
          offset: Offset(0.0, -12.0),
          blurRadius: 32.0,
        ),
      ],
      minHeight: 85.0,
      maxHeight: MediaQuery.of(context).size.height * 0.75,
      snapPoint: .5,
      header: Container(),
      parallaxEnabled: true,
      parallaxOffset: .5,
      panelBuilder: () => _panel(),
    );
  }

  Widget _panel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
              bottom: 16.0,
            ),
            child: Container(
              width: 42.0,
              height: 4.0,
              decoration: BoxDecoration(
                  color: const Color(0xFFC5CBD6),
                  borderRadius: BorderRadius.circular(2.0)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            'Continue Watching',
            style: kTitle2Style,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: ContinueWatchingList(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            'Certificates',
            style: kTitle2Style,
          ),
        ),
        const Expanded(
          child: CertificateViewer(),
        ),
      ],
    );
  }
}
