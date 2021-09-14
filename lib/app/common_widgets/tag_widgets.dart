import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TagWidget extends StatelessWidget {
  final String name;
  final Icon icon;

  final Color color;
  final Color backgroundColor;

  final Function()? onHold;
  final Function() onAction;

  const TagWidget({
    required this.name,
    required this.icon,
    required this.onAction,
    this.onHold,
    this.color = Colors.grey,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (Theme.of(context).textTheme.bodyText1?.fontSize ?? 15) + 15,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: color),
      ),
      child: InkWell(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(name, style: TextStyle(color: color)),
            ),
            IconButton(padding: EdgeInsets.zero, icon: icon, color: color, onPressed: onAction),
          ],
        ),
        onLongPress: () {
          print("Long press");
          onHold!();
        },
      ),
    );
  }
}

class EditableTagWidget extends StatefulWidget {
  final Function generateTag;

  EditableTagWidget(this.generateTag);

  @override
  _EditableTagWidgetState createState() => _EditableTagWidgetState();
}

class _EditableTagWidgetState extends State<EditableTagWidget> {
  final _controller = TextEditingController();

  void submit(BuildContext context) {
    print("Submit ${_controller.text}");
    if (_controller.text.isEmpty) return;
    if (_controller.text.length < 4 || _controller.text.length > 20) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text("Could not add tag!"),
      ));
    } else {
      widget.generateTag(_controller.text);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (Theme.of(context).textTheme.bodyText1?.fontSize ?? 15) + 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.grey),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 65,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(isCollapsed: true, isDense: true),
                autocorrect: false,
                onSubmitted: (_) => submit(context),
                onEditingComplete: () => submit(context),
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-z0-9_]'))],
                textInputAction: TextInputAction.done,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.add),
            onPressed: () => submit(context),
          ),
        ],
      ),
    );
  }
}
