import 'package:flutter/material.dart';

import '../provider/controller/action/schedule_action.dart';
import '../provider/controller/store/schedule_store.dart';
import 'mobile/schedule_mobile.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  late ScheduleReducer viewStore;

  @override
  void initState() {
    super.initState();
    viewStore = ScheduleReducer(context);
    viewStore.send(const ScheduleAction.onAppear());
  }

  @override
  void dispose() {
    super.dispose();
    viewStore.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleMobile(
      viewStore: viewStore,
    );
  }
}
