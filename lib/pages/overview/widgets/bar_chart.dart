// /// Bar chart example
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:dashboard_flutter_web/constants/style.dart';
// import 'package:flutter/material.dart';

// class SimpleBarChart extends StatelessWidget {
//   final List<charts.Series<dynamic, String>> seriesList;
//   final bool? animate;

//   SimpleBarChart(this.seriesList, {this.animate});

//   /// Creates a [BarChart] with sample data and no transition.
//   factory SimpleBarChart.withSampleData() {
//     return new SimpleBarChart(
//       _createSampleData(),
//       // Disable animations for image tests.
//       animate: false,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return charts.BarChart(
//       seriesList,
//       animate: animate,
//     );
//   }

//   /// Create one series with sample hard coded data.
//   static List<charts.Series<OrdinalSales, String>> _createSampleData() {
//     final data = [
//       new OrdinalSales('Today', 55),
//       new OrdinalSales('Yesterday', 25),
//       new OrdinalSales('2 days', 100),
//       new OrdinalSales('24 Jun', 75),
//       new OrdinalSales('23 Jun', 38),
//       new OrdinalSales('22 Jun', 87),
//       new OrdinalSales('21 Jun', 60),
//     ];

//     return [
//       new charts.Series<OrdinalSales, String>(
//         id: 'Sales',
//         colorFn: (_, __) => charts.ColorUtil.fromDartColor(active),
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         data: data,
//       )
//     ];
//   }
// }

// /// Sample ordinal data type.
// class OrdinalSales {
//   final String year;
//   final int sales;

//   OrdinalSales(this.year, this.sales);
// }

/* Try correcting the name to the name of an existing getter, or defining a getter or field named 'body1'.
      color ??= Theme.of(context).textTheme.body1!.color; 
      
      not fixed yet!*/
