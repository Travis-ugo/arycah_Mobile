import '../../../library_imports.dart';

class NewDrawer extends StatefulWidget {
  const NewDrawer({Key? key}) : super(key: key);

  @override
  _NewDrawerState createState() => _NewDrawerState();
}

class _NewDrawerState extends State<NewDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  void toggle() {
    animationController!.isDismissed
        ? animationController!.forward()
        : animationController!.reverse();
  }

  void _onDragStart(DragStartDetails details) {
    double minDragStartEdge = 0.3;
    double maxDragStartEdge = 10;
    bool isDragOpenFromLeft = animationController!.isDismissed &&
        details.globalPosition.dx < minDragStartEdge;
    bool isDragCloseFromLeft = animationController!.isCompleted &&
        details.globalPosition.dx > maxDragStartEdge;

    bool canBeDragged = isDragOpenFromLeft || isDragCloseFromLeft;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    bool canBeDragged = true;
    // bool  _canBeDragged;
    if (canBeDragged) {
      double delta = details.primaryDelta! / maxSlide;
      animationController!.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    if (animationController!.isDismissed || animationController!.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= 345) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      animationController!.fling(velocity: visualVelocity);
    } else if (animationController!.value < 0.5) {
      animationController!.forward(); //close();
    } else {
      animationController!.reverse();
    }
  }

  final double maxSlide = 225.0;
  var myDawer = Container(
    color: Colors.orangeAccent,
  );
  // var myChild = Container(
  //   decoration: BoxDecoration(
  //     color: Colors.lightBlueAccent,
  //     borderRadius: BorderRadius.circular(2 * animationController!.value;),
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragStart: _onDragStart,
        onHorizontalDragEnd: _onDragEnd,
        onHorizontalDragUpdate: _onDragUpdate,
        onTap: toggle,
        child: AnimatedBuilder(
          animation: animationController!,
          builder: (BuildContext context, Widget? child) {
            double slide = maxSlide * animationController!.value;
            double scale = 1 - (animationController!.value * 0.3);
            return Stack(
              children: [
                myDawer,
                Transform(
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      // boxShadow: [
                      //   BoxShadow(
                      //     blurRadius: 30 / animationController!.value,
                      //     spreadRadius: 2 / animationController!.value,
                      //     color:
                      //         Colors.lightBlueAccent.shade100.withOpacity(0.7),
                      //     offset: Offset.fromDirection(
                      //       -10,
                      //       25,
                      //     ),
                      //   ),
                      // ],
                      borderRadius: BorderRadius.circular(
                        50 * animationController!.value,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
