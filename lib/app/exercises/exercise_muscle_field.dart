import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/exercises/exercise_validation.dart';
import 'package:stronk/controllers/muscle_controller.dart';
import 'package:stronk/models/muscle/muscle.dart';
import 'package:stronk/util/validation.dart';

class MuscleSelectionImage extends StatelessWidget {
  final List<Muscle>? muscles;
  final bool isFront;
  const MuscleSelectionImage({required this.muscles, required this.isFront});

  bool _matchesSide(MuscleSide? side) {
    switch (side) {
      case MuscleSide.Both:
        return true;
      case MuscleSide.Front:
        return isFront == true;
      case MuscleSide.Back:
        return isFront == false;
      default:
        return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final imagePaths = List<Muscle>.from(muscles ?? [])
        .where((el) => el.imagePath != null && el.imagePath!.isNotEmpty)
        .where((el) => _matchesSide(el.side))
        .map((e) => e.imagePath!)
        .toList()
      ..insert(
        0,
        isFront ? 'assets/images/body_front.svg' : 'assets/images/body_back.svg',
      );

    // As the images are on top of each other, we are able to stack them
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Theme.of(context).colorScheme.background,
        child: Stack(
          children: imagePaths
              .map(
                (imagePath) => SvgPicture.asset(
                  imagePath,
                  alignment: Alignment.center,
                  colorBlendMode: BlendMode.hardLight,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class MuscleSelectedList extends StatelessWidget {
  final List<Muscle>? muscles;

  const MuscleSelectedList({required this.muscles});

  @override
  Widget build(BuildContext context) {
    return (muscles != null && muscles!.isNotEmpty)
        ? ListView.builder(
            itemBuilder: (_, index) => ListTile(title: Text(muscles![index].name)),
            itemCount: muscles!.length,
          )
        : Center(
            child: Text("No muscles selected"),
          );
  }
}

class MuscleSelectionItem extends StatelessWidget {
  final Muscle muscle;
  final Icon icon;
  final Function(Muscle) action;

  const MuscleSelectionItem({
    required this.muscle,
    required this.icon,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    String? backgroundPath = null;
    if (muscle.side == MuscleSide.Front) {
      backgroundPath = 'assets/images/body_front.svg';
    } else if (muscle.side == MuscleSide.Back) {
      backgroundPath = 'assets/images/body_back.svg';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        title: Text(muscle.name),
        subtitle: Text("${muscle.region?.description} / ${muscle.side?.description}"),
        leading: FittedBox(
          fit: BoxFit.cover,
          child: Stack(
            children: [
              if (backgroundPath != null)
                SvgPicture.asset(
                  backgroundPath,
                  alignment: Alignment.center,
                  colorBlendMode: BlendMode.hardLight,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              if (muscle.imagePath != null)
                SvgPicture.asset(
                  muscle.imagePath!,
                  colorBlendMode: BlendMode.hardLight,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
            ],
          ),
        ),
        trailing: IconButton(
          icon: icon,
          onPressed: () => action(muscle),
        ),
      ),
    );
  }
}

class MuscleSelectionList extends StatelessWidget {
  final List<Muscle>? selected;
  final List<Muscle> available;
  final Function(List<Muscle>?) updateState;
  final bool loading;
  final Object? error;

  const MuscleSelectionList({
    required this.selected,
    required this.available,
    required this.updateState,
    required this.loading,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    final widgets = [
      ...List.from(selected ?? [])
          .map(
            (muscle) => MuscleSelectionItem(
              muscle: muscle,
              icon: Icon(Icons.delete),
              action: (muscle) => updateState(selected?..remove(muscle)),
            ),
          )
          .toList(),
      if (error != null)
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Material(
            elevation: 1,
            child: ListTile(
              leading: Icon(Icons.warning, color: Colors.yellow),
              title: Text(error.toString()),
              dense: true,
            ),
          ),
        ),
      if (loading)
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Material(
            elevation: 1,
            child: ListTile(
              leading: CircularProgressIndicator(),
              title: Text("Loading available muscles"),
              dense: true,
            ),
          ),
        ),
      if (available.isNotEmpty)
        ...available
            .where((muscle) => !List.from(selected ?? []).map((e) => e.name).contains(muscle.name))
            .map(
              (muscle) => MuscleSelectionItem(
                muscle: muscle,
                icon: Icon(Icons.add),
                action: (muscle) {
                  final muscles = List<Muscle>.from(selected ?? []);
                  if (!muscles.map((e) => e.name).contains(muscle.name)) {
                    updateState(muscles..add(muscle));
                  } else {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Could not selected muscle, it was already selected."),
                      ),
                    );
                  }
                },
              ),
            )
            .toList(),
    ];

    return ListView.builder(
      itemBuilder: (_, index) => widgets[index],
      itemCount: widgets.length,
    );
  }
}

class MuscleSelectionScreen extends ConsumerWidget {
  const MuscleSelectionScreen();

  _buildContent(
    List<Muscle>? selectedMuscles,
    List<Muscle> availableMuscles,
    WidgetRef ref, {
    bool loading = false,
    Object? error,
  }) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Muscles"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: MuscleSelectionImage(muscles: selectedMuscles, isFront: true),
                      fit: FlexFit.tight,
                      flex: 2,
                    ),
                    Flexible(
                      child: MuscleSelectionImage(muscles: selectedMuscles, isFront: false),
                      fit: FlexFit.tight,
                      flex: 2,
                    ),
                    Flexible(
                      child: MuscleSelectedList(muscles: selectedMuscles),
                      fit: FlexFit.tight,
                      flex: 3,
                    )
                  ],
                ),
              ),
              fit: FlexFit.tight,
              flex: 1,
            ),
            Flexible(
              child: MuscleSelectionList(
                selected: selectedMuscles,
                available: availableMuscles,
                updateState: ref.read(exerciseValidationProvider.notifier).updateMuscles,
                loading: loading,
                error: error,
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(exerciseValidationProvider).muscles;

    return ref.watch(muscleListControllerProvider).when(
          data: (data) => _buildContent(state.value, data, ref),
          loading: () => _buildContent(state.value, [], ref, loading: true),
          error: (error, _) => _buildContent(state.value, [], ref, error: error),
        );
  }
}

class DenseMuscleTile extends StatelessWidget {
  final Muscle muscle;
  const DenseMuscleTile(this.muscle);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    final backgroundColor = Theme.of(context).primaryColor.withOpacity(0.1);

    return Container(
      height: (Theme.of(context).textTheme.bodyText1?.fontSize ?? 15) + 15,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: color),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(muscle.name, style: TextStyle(color: color)),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.add),
            color: color,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class MuscleField extends ConsumerWidget {
  final ValidationItem<List<Muscle>> state;
  final Function(List<Muscle>?) updateState;

  const MuscleField({
    required this.state,
    required this.updateState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muscles = state.value;
    List<Widget> muscleWidgets = [];

    // Add for each selected muscle
    if (muscles != null && muscles.isNotEmpty) {
      muscleWidgets.addAll(muscles.map(
        (muscle) => DenseMuscleTile(muscle),
      ));
    }

    // Add one for adding new muscles
    muscleWidgets.add(
      ListTile(
        title: Text("Add muscle"),
        trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: () async {
            await Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => MuscleSelectionScreen(),
              fullscreenDialog: true,
            ));
          },
        ),
      ),
    );

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey.shade500, // set border color
            width: 1.0), // set border width
        borderRadius: BorderRadius.all(Radius.circular(5.0)), // set rounded corner radius
      ),
      constraints: BoxConstraints(minHeight: 40),
      padding: const EdgeInsets.only(top: 5, bottom: 5.0, left: 7, right: 7),
      child: Wrap(
        children: muscleWidgets,
        spacing: 5.0,
        runSpacing: 5.0,
        runAlignment: WrapAlignment.start,
      ),
    );
  }
}
