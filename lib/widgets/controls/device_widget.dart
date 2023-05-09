import 'package:flutter/material.dart';

class DeviceWidget extends StatefulWidget {
  const DeviceWidget({Key? key}) : super(key: key);

  @override
  _DeviceWidgetState createState() => _DeviceWidgetState();
}

class _DeviceWidgetState extends State<DeviceWidget> {
  bool isActivated = false;
  final label = "Task ABC 234";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      //child: Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 5.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.grey[100],
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 20.0),
              Expanded(child: Text(label)),
              Switch(
                  value: isActivated,
                  onChanged: (activated) {
                    setState(() {
                      isActivated = activated;
                    });
                  }),
              const SizedBox(width: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
