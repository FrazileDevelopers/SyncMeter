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
          maximum: 180,
          // canScaleToFit: true,
          radiusFactor: 0.95,
          pointers: <GaugePointer>[
            NeedlePointer(
              needleStartWidth: 1,
              value: 180,
              enableAnimation: true,
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
              endValue: 50,
              sizeUnit: GaugeSizeUnit.factor,
              startWidth: 0,
              endWidth: 0.1,
              color: const Color(0xFF9AB715),
            ),
            GaugeRange(
              startValue: 55,
              endValue: 60,
              startWidth: 0.1,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.15,
              color: const Color(0xFFA7C21C),
            ),
            GaugeRange(
              startValue: 65,
              endValue: 70,
              startWidth: 0.1,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.16,
              color: const Color(0xFFB0D311),
            ),
            GaugeRange(
              startValue: 75,
              endValue: 80,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFFC9DF1F),
            ),
            GaugeRange(
              startValue: 85,
              endValue: 90,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFFD9EE20),
            ),
            GaugeRange(
              startValue: 95,
              endValue: 100,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFFF5E217),
            ),
            GaugeRange(
              startValue: 105,
              endValue: 110,
              startWidth: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFFFED000),
            ),
            GaugeRange(
              startValue: 115,
              endValue: 125,
              startWidth: 0.2,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.2,
              color: const Color(0xFFF66013),
            ),
            GaugeRange(
              startValue: 128,
              endValue: 140,
              startWidth: 0.2,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.20,
              color: const Color(0xFFF83917),
            ),
            GaugeRange(
              startValue: 145,
              endValue: 160,
              startWidth: 0.2,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.20,
              color: const Color(0xFFFE2400),
            ),
            GaugeRange(
              startValue: 165,
              endValue: 180,
              startWidth: 0.2,
              sizeUnit: GaugeSizeUnit.factor,
              endWidth: 0.25,
              color: const Color(0xFFFA0001),
            ),
          ],
        ),
      ],
    );
  }
}
