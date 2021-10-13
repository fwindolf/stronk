
// @freezed
// class BaseRepetitionExecution with _$BaseRepetitionExecution {
//   const BaseRepetitionExecution._();

//   @Implements(RepetitionExecution)
//   const factory BaseRepetitionExecution({
//     required List<Set> sets,
//   }) = _BaseRepetitionExecution;

//   factory BaseRepetitionExecution.fromSets(List<Set> sets) =>
//       BaseRepetitionExecution(sets: sets);

//   factory BaseRepetitionExecution.empty({double? weight}) =>
//       BaseRepetitionExecution(
//         sets: List.generate(
//           3,
//           (_) => Set(
//             count: 12,
//             weight: weight,
//             pauseSeconds: 60,
//           ),
//         ),
//       );

//   List<Set> as(RepetitionType type) {
//     switch (type) {
//       case RepetitionType.SetRepetition:
//         return this.sets;
//       case RepetitionType.CircuitSetRepetition:
//         var _sets = <Set>[];
//         sets.forEach(
//           (set) {
//             _sets.add(
//               Set(
//                 count: set.count * 2,
//                 weight: set.weight == null
//                     ? null
//                     : (0.6 * set.weight!).floorToDouble(),
//                 pauseSeconds: 20,
//               ),
//             );
//           },
//         );
//         return _sets;
//       case RepetitionType.ThreeToSeven:
//         // TODO
//         return List.generate(
//           5,
//           (index) => Set(
//             count: index + 3,
//             pauseSeconds: 15,
//             weight: sets[index].weight,
//           ),
//         );
//       case RepetitionType.DoPause:
//         var _sets = <Set>[];
//         var _remaining = sets.fold(0, (int prev, set) => prev + set.count);
//         while (_remaining > 0) {
//           final reps = (0.6 * _remaining).floor();
//           _remaining = _remaining - reps;
//           _sets.add(
//             Set(pauseSeconds: 30, weight: sets[0].weight, count: reps),
//           );
//         }
//         return _sets;
//     }
//   }
// }
