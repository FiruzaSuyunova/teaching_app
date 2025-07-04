import 'package:flutter/material.dart';

class AnimatedLinguaLogo extends StatefulWidget {
  final double size;

  const AnimatedLinguaLogo({
    Key? key,
    this.size = 200.0,
  }) : super(key: key);

  @override
  State<AnimatedLinguaLogo> createState() => _AnimatedLinguaLogoState();
}

class _AnimatedLinguaLogoState extends State<AnimatedLinguaLogo>
    with TickerProviderStateMixin {
  late AnimationController _floatController;
  late AnimationController _pulseController;
  late AnimationController _rotateController;
  late AnimationController _sparkleController;

  late Animation<double> _floatAnimation;
  late Animation<double> _pulseAnimation;
  late Animation<double> _rotateAnimation;
  late Animation<double> _sparkleAnimation;

  @override
  void initState() {
    super.initState();

    // Float animation
    _floatController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _floatAnimation = Tween<double>(
      begin: 0.0,
      end: -10.0,
    ).animate(CurvedAnimation(
      parent: _floatController,
      curve: Curves.easeInOut,
    ));

    // Pulse animation
    _pulseController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _pulseAnimation = Tween<double>(
      begin: 1.0,
      end: 1.1,
    ).animate(CurvedAnimation(
      parent: _pulseController,
      curve: Curves.easeInOut,
    ));

    // Rotate animation
    _rotateController = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
    _rotateAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_rotateController);

    // Sparkle animation
    _sparkleController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _sparkleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _sparkleController,
      curve: Curves.easeInOut,
    ));

    // Start animations
    _floatController.repeat(reverse: true);
    _pulseController.repeat(reverse: true);
    _rotateController.repeat();
    _sparkleController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _floatController.dispose();
    _pulseController.dispose();
    _rotateController.dispose();
    _sparkleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Glow effect
          AnimatedBuilder(
            animation: _rotateAnimation,
            builder: (context, child) {
              return Transform.rotate(
                angle: _rotateAnimation.value * 2 * 3.14159,
                child: Container(
                  width: widget.size + 20,
                  height: widget.size + 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF90EE90),
                        Color(0xFFDDA0DD),
                        Color(0xFF90EE90),
                      ],
                      stops: [0.0, 0.5, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF90EE90).withOpacity(0.3),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          // Main logo diamond
          AnimatedBuilder(
            animation: _floatAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, _floatAnimation.value),
                child: Transform.rotate(
                  angle: 3.14159 / 4, // 45 degrees
                  child: Container(
                    width: widget.size,
                    height: widget.size,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF90EE90),
                          Color(0xFFDDA0DD),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF90EE90).withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF98FB98),
                            Color(0xFFE6A8E6),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          // Letter L
          AnimatedBuilder(
            animation: Listenable.merge([_floatAnimation, _pulseAnimation]),
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, _floatAnimation.value),
                child: Transform.scale(
                  scale: _pulseAnimation.value,
                  child: Text(
                    'L',
                    style: TextStyle(
                      fontSize: widget.size * 0.4,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2d4a2d),
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(2, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),

          // Sparkles
          ...List.generate(4, (index) {
            final positions = [
              Offset(-widget.size * 0.3, -widget.size * 0.3),
              Offset(widget.size * 0.3, -widget.size * 0.2),
              Offset(-widget.size * 0.3, widget.size * 0.2),
              Offset(widget.size * 0.3, widget.size * 0.3),
            ];

            return AnimatedBuilder(
              animation: _sparkleAnimation,
              builder: (context, child) {
                final delay = index * 0.25;
                final animValue = (_sparkleAnimation.value + delay) % 1.0;
                final opacity = animValue < 0.5 ? animValue * 2 : (1 - animValue) * 2;
                final scale = animValue < 0.5 ? 0.5 + animValue : 1.5 - animValue;

                return Positioned(
                  left: widget.size / 2 + positions[index].dx,
                  top: widget.size / 2 + positions[index].dy,
                  child: Transform.scale(
                    scale: scale,
                    child: Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(opacity),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}

// Ishlatish uchun misol:
