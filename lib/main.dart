import 'package:flutter/material.dart';
import 'package:css_text/css_text.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String htmlContent = """
<p>The most common causes include:</p><ul><li><strong>Food poisoning</strong> â This can happen if you ea
t food that has gone bad. It is basically an infection in your stomach. Infections like these often also cause diarrhea. Other kinds of infections that affect the stomach or intestines can also cause nausea and vomiting.<p></p></li><li><strong>Dizziness or motion sickness</strong> â This can happen if you're on a boat or in a car, or something else that moves. It can also h
appen if there's something wrong inside your ears that affects your balance.<p></p></li><li><strong>Medicines</strong> â Lot
s of different medicines can cause nausea or vomiting. Some examples are antidepressants, antibiotics, vitamins, birth control pills, and pain medicines. People who are on chemotherapy for cancer treatment or who have been under anesthesia also often have nausea or vomiting. Sometimes, people who use cannabis (marijuana) over a long time have repeated episodes of vomitin """;

    var myRichText =
        HTML.toRichText(context, htmlContent, linksCallback: (link) {
      print("You clicked on $link");
    });

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Demo")),
            body: Material(
                child: Container(
                    padding: EdgeInsets.all(16.0), child: myRichText))));
  }
}
