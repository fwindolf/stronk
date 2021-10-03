import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stronk/app/settings/enum_dialog.dart';
import 'package:stronk/app/settings/util.dart';
import 'package:stronk/models/settings/reminder.dart';
import 'package:stronk/models/settings/workout_settings.dart';

class DaysAxis extends StatelessWidget {
  final int days;
  const DaysAxis([this.days = 7]);

  static String dayOfWeek(int day) {
    final date = DateTime(2001, 1, 1); // Date with Monday as first day
    return DateFormat("EE").format(date.add(Duration(days: day)));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(),
        ),
        ...List.generate(
          days,
          (index) => Expanded(
            flex: 1,
            child: Container(
              constraints: BoxConstraints(),
              child: Center(child: Text(dayOfWeek(index))),
            ),
          ),
        ),
      ],
    );
  }
}

class SelectorAxis extends StatelessWidget {
  final List<ReminderTimeslot> slots;

  final Axis direction;

  const SelectorAxis({
    required this.slots,
    this.direction = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: slots.map((slot) {
        return Flexible(
          flex: 1,
          child: Center(
            child: Text(
              hourToTime(slot.hourOfDay),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ColumnSelector extends StatelessWidget {
  final List<ReminderTimeslot> selected;
  final List<ReminderTimeslot> available;
  final int maxSlots;
  final int day;
  final Function(List<ReminderTimeslot>) updateSlots;

  final Axis direction;

  const ColumnSelector({
    required this.selected,
    required this.available,
    required this.updateSlots,
    required this.maxSlots,
    this.day = 0,
    this.direction = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: available.map((slot) {
        var radius;
        var color;

        final index = available.indexOf(slot);
        if (index == 0) {
          radius = BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight:
                direction == Axis.vertical ? Radius.circular(5.0) : Radius.zero,
            bottomLeft: direction == Axis.horizontal
                ? Radius.circular(5.0)
                : Radius.zero,
          );
        } else if (index == available.length - 1) {
          radius = BorderRadius.only(
            topRight: direction == Axis.horizontal
                ? Radius.circular(5.0)
                : Radius.zero,
            bottomLeft:
                direction == Axis.vertical ? Radius.circular(5.0) : Radius.zero,
            bottomRight: Radius.circular(5.0),
          );
        }

        final selectedHours = selected.map((s) => s.hourOfDay).toList();

        if (selectedHours.contains(slot.hourOfDay)) {
          color = Colors.green; // Theme.of(context).colorScheme.primary;
        } else {
          color = Colors.grey.shade100;
        }

        return Flexible(
          flex: 1,
          child: InkWell(
            child: Container(
              constraints: BoxConstraints(
                minHeight: direction == Axis.horizontal ? 40 : 0,
                minWidth: direction == Axis.vertical ? 40 : 0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                color: color,
                borderRadius: radius,
              ),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              if (selectedHours.contains(slot.hourOfDay)) {
                updateSlots(
                  selected
                      .where(
                        (s) => !(s.dayOfWeek == day &&
                            s.hourOfDay == slot.hourOfDay),
                      )
                      .toList(),
                );
              } else if (selected.length < maxSlots) {
                updateSlots(selected..add(slot.copyWith(dayOfWeek: day)));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text(
                    "Can not set more reminders than intended sessions",
                  ),
                ));
              }
            },
          ),
        );
      }).toList(),
    );
  }
}

class PerDaySelector extends StatelessWidget {
  final Reminder reminder;
  final List<ReminderTimeslot> slots;
  final int maxSlots;
  final Function(Reminder) updateReminder;

  const PerDaySelector({
    required this.reminder,
    required this.slots,
    required this.maxSlots,
    required this.updateReminder,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SelectorAxis(
            direction: Axis.horizontal,
            slots: slots,
          ),
          ColumnSelector(
            direction: Axis.horizontal,
            selected: reminder.selectedSlots,
            available: slots,
            maxSlots: maxSlots,
            updateSlots: (slots) {
              updateReminder(
                reminder.copyWith(
                  selectedSlots: slots
                      .map(
                        (slot) => slot.copyWith(dayOfWeek: slot.dayOfWeek ?? 0),
                      )
                      .toList(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class PerWeekSelector extends StatelessWidget {
  final Reminder reminder;
  final List<ReminderTimeslot> slots;
  final int maxSlots;
  final Function(Reminder) updateReminder;

  const PerWeekSelector({
    required this.reminder,
    required this.slots,
    required this.maxSlots,
    required this.updateReminder,
  });

  _buildWeekSelection({required int week}) {
    return Flexible(
      flex: slots.length,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SelectorAxis(
              direction: Axis.vertical,
              slots: slots,
            ),
          ),
          ...List.generate(7, (weekDay) {
            final day = weekDay + 7 * week;
            final otherSlots = reminder.selectedSlots
                .where((slot) => (slot.dayOfWeek ?? 0) != day)
                .toList();
            final daySlots = reminder.selectedSlots
                .where((slot) => (slot.dayOfWeek ?? 0) == day)
                .toList();
            return Expanded(
              flex: 1,
              child: ColumnSelector(
                direction: Axis.vertical,
                day: day,
                selected: daySlots,
                available: slots,
                maxSlots: maxSlots - otherSlots.length,
                updateSlots: (slots) {
                  print(slots);
                  updateReminder(
                    reminder.copyWith(
                      selectedSlots: otherSlots..addAll(slots),
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 140,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: DaysAxis(),
            ),
            _buildWeekSelection(week: 0),
          ],
        ),
      ),
    );
  }
}

class PerTwoWeekSelector extends PerWeekSelector {
  const PerTwoWeekSelector({
    required Reminder reminder,
    required List<ReminderTimeslot> slots,
    required int maxSlots,
    required Function(Reminder) updateReminder,
  }) : super(
          reminder: reminder,
          slots: slots,
          maxSlots: maxSlots,
          updateReminder: updateReminder,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 300,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: DaysAxis(),
            ),
            _buildWeekSelection(week: 0),
            Spacer(
              flex: 1,
            ),
            _buildWeekSelection(week: 1),
          ],
        ),
      ),
    );
  }
}

class TimeslotSelector extends StatelessWidget {
  final SessionGoal goal;
  final Reminder reminder;
  final List<ReminderTimeslot> slots;
  final Function(Reminder) updateReminder;

  const TimeslotSelector({
    required this.goal,
    required this.reminder,
    required this.updateReminder,
    required this.slots,
  });

  _toDailySlots(List<ReminderTimeslot> slots, {required int maxSlots}) {
    var validSlots = <ReminderTimeslot>[];
    slots.forEach((slot) {
      if (!containsHour(validSlots, slot)) {
        validSlots.add(slot.copyWith(dayOfWeek: 0));
      }
    });
    if (validSlots.isEmpty) return validSlots;
    return validSlots.sublist(0, min(maxSlots, validSlots.length));
  }

  _toWeeklySlots(List<ReminderTimeslot> slots, {required int maxSlots}) {
    var validSlots = <ReminderTimeslot>[];
    slots.forEach((slot) {
      if (!containsHourAndDay(validSlots, slot)) {
        validSlots.add(
          slot.copyWith(dayOfWeek: slot.dayOfWeek ?? 0 % 7),
        );
      }
    });
    if (validSlots.isEmpty) return validSlots;
    return validSlots.sublist(0, min(maxSlots, validSlots.length));
  }

  _toBiWeeklySlots(List<ReminderTimeslot> slots, {required int maxSlots}) {
    var validSlots = <ReminderTimeslot>[];
    slots.forEach((slot) {
      if (!containsHourAndDay(validSlots, slot)) {
        validSlots.add(
          slot.copyWith(dayOfWeek: slot.dayOfWeek ?? 0 % 14),
        );
      }
    });
    if (validSlots.isEmpty) return validSlots;
    return validSlots.sublist(0, min(maxSlots, validSlots.length));
  }

  @override
  Widget build(BuildContext context) {
    switch (goal.timeframe) {
      case Timeframe.HoursPerDay:
        print("update");
        updateReminder(
          reminder.copyWith(
            selectedSlots: _toDailySlots(
              reminder.selectedSlots,
              maxSlots: goal.count * 2,
            ),
          ),
        );
        return PerDaySelector(
          reminder: reminder,
          updateReminder: updateReminder,
          slots: slots,
          maxSlots: goal.count * 2,
        );
      case Timeframe.HoursPerWeek:
        print("update");
        updateReminder(
          reminder.copyWith(
            selectedSlots: _toWeeklySlots(
              reminder.selectedSlots,
              maxSlots: goal.count * 2,
            ),
          ),
        );
        return PerWeekSelector(
          reminder: reminder,
          updateReminder: updateReminder,
          slots: slots,
          maxSlots: goal.count * 2,
        );
      case Timeframe.SessionsPerWeek:
        print("update");
        updateReminder(
          reminder.copyWith(
            selectedSlots: _toWeeklySlots(
              reminder.selectedSlots,
              maxSlots: goal.count * 2,
            ),
          ),
        );
        return PerWeekSelector(
          reminder: reminder,
          updateReminder: updateReminder,
          slots: slots,
          maxSlots: goal.count,
        );
      case Timeframe.SessionsPerTwoWeeks:
        print("update");
        updateReminder(
          reminder.copyWith(
            selectedSlots: _toBiWeeklySlots(
              reminder.selectedSlots,
              maxSlots: goal.count * 2,
            ),
          ),
        );
        return PerTwoWeekSelector(
          reminder: reminder,
          updateReminder: updateReminder,
          slots: slots,
          maxSlots: goal.count,
        );
    }
  }
}

class ReminderSlotsSettingsItem extends StatelessWidget {
  final List<ReminderTimeslot> slotChoices;
  final Function(ReminderTimeslot old, ReminderTimeslot now) updateSlots;

  const ReminderSlotsSettingsItem({
    required this.slotChoices,
    required this.updateSlots,
  });

  Widget _buildSlotSelection(int hour, color) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 1, color: Colors.grey),
        color: color,
      ),
      child: Text(hourToTime(hour)),
    );
  }

  void _showSlotSelection(
    BuildContext context,
    ReminderTimeslot slot,
  ) async {
    final selected = slotChoices
        .where((s) => s.hourOfDay != slot.hourOfDay)
        .map((s) => s.hourOfDay)
        .toList();
    final hourOfDay = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            "Select Slots for Reminders",
            style: Theme.of(context).textTheme.headline5,
          ),
          contentPadding: const EdgeInsets.all(20.0),
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              runAlignment: WrapAlignment.center,
              children: List.generate(24, (i) => i + 1).map((hour) {
                if (hour == slot.hourOfDay) {
                  // Is clicked on selection -> don't change anything if clicked
                  return InkWell(
                    onTap: () => Navigator.pop(context),
                    child: _buildSlotSelection(hour, Colors.grey.shade400),
                  );
                } else if (selected.contains(hour)) {
                  // Is another option, already selected -> cannot click
                  return _buildSlotSelection(hour, Colors.grey.shade300);
                } else {
                  // Change to new selected hour
                  return InkWell(
                    onTap: () => Navigator.pop(context, hour),
                    child: _buildSlotSelection(hour, null),
                  );
                }
              }).toList(),
            ),
          ],
        );
      },
    );
    if (hourOfDay != null) {
      updateSlots(slot, ReminderTimeslot(hourOfDay: hourOfDay));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 12.0,
                ),
                child: Text(
                  "Reminder Timeslots",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            // Flexible(
            //   flex: 2,
            //   child: Container(),
            // ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: slotChoices.map(
            (slot) {
              return Flexible(
                fit: FlexFit.loose,
                child: InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Center(
                      child: Text(hourToTime(slot.hourOfDay)),
                    ),
                  ),
                  onTap: () => _showSlotSelection(
                    context,
                    slot,
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}

class ReminderScreen extends StatelessWidget {
  final String title;
  final WorkoutSettings workoutSettings;
  final Function(WorkoutSettings) updateWorkoutSettings;

  late SessionGoal workoutGoal;
  late List<ReminderTimeslot> slots;
  late Reminder reminder;

  ReminderScreen({
    required this.title,
    required this.workoutSettings,
    required this.updateWorkoutSettings,
  })  : workoutGoal = workoutSettings.workoutGoal ?? SessionGoal.empty(),
        slots = workoutSettings.slotChoices,
        reminder = workoutSettings.reminders["workout"] ?? Reminder.empty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Reminder"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SettingsRowItem(
            title: "Timeframe",
            data: workoutGoal,
            getValue: (SessionGoal goal) =>
                "${goal.count} ${goal.timeframe.name}",
          ),
          TimeslotSelector(
            goal: workoutGoal,
            reminder: reminder,
            updateReminder: (reminder) => updateWorkoutSettings(
              workoutSettings.copyWith(
                reminders: workoutSettings.reminders
                  ..putIfAbsent("workout", () => Reminder.empty())
                  ..update("workout", (_) => reminder),
              ),
            ),
            slots: slots,
          ),
          ReminderSlotsSettingsItem(
            slotChoices: slots,
            updateSlots: (_old, _new) =>
                updateSlots(_old, _new, workoutSettings, updateWorkoutSettings),
          ),
          SettingsRowItem(
            title: "Continuously Remind",
            data: reminder,
            getValue: (Reminder reminder) =>
                reminder.continuouslyRemind ? "Yes" : "No",
            changeValue: (BuildContext context) async {
              final _continuouslyRemind = await EnumDialog.show<bool>(
                context,
                "Continue to Remind",
                {true: "Yes", false: "No"},
                reminder.continuouslyRemind,
              );
              if (_continuouslyRemind != null) {
                updateWorkoutSettings(
                  workoutSettings.copyWith(
                    reminders: workoutSettings.reminders
                      ..putIfAbsent("workout", () => Reminder.empty())
                      ..update(
                        "workout",
                        (_) => reminder.copyWith(
                          continuouslyRemind: _continuouslyRemind,
                        ),
                      ),
                  ),
                );
              }
            },
          ),
          SettingsRowItem(
            title: "Allow Snooze",
            data: reminder,
            getValue: (Reminder reminder) =>
                reminder.snoozeAllowed ? "Yes" : "No",
            changeValue: (BuildContext context) async {
              final _snoozeAllowed = await EnumDialog.show<bool>(
                context,
                "Allow to Snooze",
                {true: "Yes", false: "No"},
                reminder.snoozeAllowed,
              );
              if (_snoozeAllowed != null) {
                updateWorkoutSettings(
                  workoutSettings.copyWith(
                    reminders: workoutSettings.reminders
                      ..putIfAbsent("workout", () => Reminder.empty())
                      ..update(
                        "workout",
                        (value) => reminder.copyWith(
                          snoozeAllowed: _snoozeAllowed,
                        ),
                      ),
                  ),
                );
              }
            },
          ),
          SettingsRowItem(
            title: "Snooze Interval",
            data: reminder,
            getValue: (Reminder reminder) => reminder.minutes,
            changeValue: (BuildContext context) async {
              final _snoozeInterval = await EnumDialog.show<int>(
                context,
                "Snooze Interval",
                Reminder.minuteChoices,
                reminder.snoozeMinutes,
              );
              if (_snoozeInterval != null) {
                updateWorkoutSettings(
                  workoutSettings.copyWith(
                    reminders: workoutSettings.reminders
                      ..putIfAbsent("workout", () => Reminder.empty())
                      ..update(
                        "workout",
                        (value) => reminder.copyWith(
                          snoozeMinutes: _snoozeInterval,
                        ),
                      ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
