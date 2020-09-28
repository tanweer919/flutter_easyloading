import 'package:flutter/widgets.dart';

import 'animation.dart';

class OffsetAnimation extends EasyLoadingAnimation {
  OffsetAnimation();

  @override
  Widget buildWidget(
    Widget child,
    AnimationController controller,
  ) {
    Animation<Offset> _animation = Tween(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(controller);
    double value = controller?.value ?? 0;
    return Opacity(
      opacity: value,
      child: SlideTransition(
        position: _animation,
        child: ScaleTransition(
          scale: controller,
          child: child,
        ),
      ),
    );
  }
}
