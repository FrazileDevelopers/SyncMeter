import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SyncMeter extends StatefulWidget {
  @override
  _SyncMeterState createState() => _SyncMeterState();
}

class _SyncMeterState extends State<SyncMeter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildMultipleRangesExampleGauge(context),
    );
  }

  /// Returns the multiple range gauge
  SfRadialGauge _buildMultipleRangesExampleGauge(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          showAxisLine: false,
          showLabels: false,
          showTicks: false,
          startAngle: 180,
          endAngle: 360,
          minimum: 0,
          maximum: 80,
          // canScaleToFit: true,
          radiusFactor: 0.95,
          pointers: <GaugePointer>[
            NeedlePointer(
              needleStartWidth: 1,
              value: 30,
              needleEndWidth: true
                  ? 5
                  : MediaQuery.of(context).orientation == Orientation.portrait
                      ? 10
                      : 6,
              needleLength: 0.7,
              lengthUnit: GaugeSizeUnit.factor,
              knobStyle: KnobStyle(
                knobRadius: 0.08,
                sizeUnit: GaugeSizeUnit.factor,
              ),
            ),
          ],
          ranges: <GaugeRange>[
            GaugeRange(
              startValue: 0,
              endValue: 18,
              sizeUnit: GaugeSizeUnit.factor,
              startWidth: 0,
              endWidth: 0.1,
              color: const Color(0xFFA8AAE2),
            ),
            GaugeRange(
              startValue: 20,
              endValue: 23,
              startWidth: 0.1,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.15,
              color: const Color.fromRGBO(168, 170, 226, 1),
            ),
            GaugeRange(
              startValue: 25,
              endValue: 28,
              startWidth: 0.1,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.15,
              color: const Color.fromRGBO(168, 170, 226, 1),
            ),
            GaugeRange(
              startValue: 30,
              endValue: 33,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFF7B7DC7),
            ),
            GaugeRange(
              startValue: 35,
              endValue: 38,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFF7B7DC7),
            ),
            GaugeRange(
              startValue: 40,
              endValue: 44,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFF7B7DC7),
            ),
            GaugeRange(
              startValue: 46,
              endValue: 50,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFF7B7DC7),
            ),
            GaugeRange(
              startValue: 52,
              endValue: 59,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFF7B7DC7),
            ),
            GaugeRange(
              startValue: 60,
              endValue: 68,
              startWidth: 0.2,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.25,
              color: const Color.fromRGBO(73, 76, 162, 1),
            ),
            GaugeRange(
              startValue: 70,
              endValue: 78,
              startWidth: 0.2,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.25,
              color: const Color.fromRGBO(73, 76, 162, 1),
            ),
          ],
        ),
      ],
    );
  }
}
