import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/101/padding_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _text_1 = "Create your first note";
  final _text_2 =
      "Add a note about anything your thoughts on climate change, or your history essay and share it with the world";
  final _createNote = "Create a note";
  final _importNote = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItem.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleSchool),
            _TitleWidget(title: _text_1),
            Padding(
              padding: ProjectPadding.pagePaddingVertical,
              child: _BodyText(
                bodyText: _text_2,
              ),
            ),
            const Spacer(),
            _createButton(),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton() {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
          height: ButtonHeight.normalButtonHeight,
          child: Center(
              child: _ButtonWidget(
            buttonText: _createNote,
          ))),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget({
    required this.buttonText,
  });
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class _BodyText extends StatelessWidget {
  const _BodyText({
    // ignore: unused_element
    required this.bodyText, this.textAlign,
  });

  final TextAlign? textAlign;
  final String bodyText;
  @override
  Widget build(BuildContext context) {
    return Text(
      bodyText,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: Colors.black, fontSize: 20),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItem {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ImageItems {
  final String appleSchool = "appleSchool.png";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  String get _nameWithPath => 'lib/assets/$name';

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }
}

class ButtonHeight {
  static const double normalButtonHeight = 50;
}
