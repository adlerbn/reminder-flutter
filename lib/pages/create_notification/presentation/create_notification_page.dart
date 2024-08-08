import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' as intl;
import 'package:reminder/models/frequency_type.dart';
import 'package:reminder/pages/create_notification/bloc/create_notification_bloc.dart';

class CreateNotificationPage extends StatelessWidget {
  const CreateNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNotificationBloc, CreateNotificationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Create Notification'),
            centerTitle: true,
            leading: const CloseButton(),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _nameField(context),
              const SizedBox(height: 16),
              Row(
                children: [
                  _startTimeField(context),
                  const SizedBox(width: 16),
                  _startDateField(context),
                ],
              ),
              const SizedBox(height: 16),
              _frequencyTypeDropdownField(context),
              const SizedBox(height: 16),
              _frequencyAmountField(context),
            ],
          ),
          floatingActionButton: _doneButton(context),
        );
      },
    );
  }

  Widget _nameField(BuildContext context) {
    final bloc = context.read<CreateNotificationBloc>();
    final initialValue = bloc.state.name;

    return TextFormField(
      initialValue: initialValue.toString(),
      decoration: const InputDecoration(labelText: "Name"),
      onChanged: (value) =>
          bloc.add(CreateNotificationEvent.changeName(name: value)),
      keyboardType: TextInputType.text,
    );
  }

  Widget _startTimeField(BuildContext context) {
    final bloc = context.read<CreateNotificationBloc>();
    final startDate = bloc.state.startDate;
    final initialValue = intl.DateFormat.Hm().format(startDate);
    final controller = TextEditingController(text: initialValue);

    return Expanded(
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(labelText: "Start time"),
        readOnly: true,
        canRequestFocus: false,
        onTap: () async {
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          );

          bloc.add(CreateNotificationEvent.changeStartDate(
            startDate: startDate.copyWith(
              hour: time?.hour,
              minute: time?.minute,
            ),
          ));
        },
      ),
    );
  }

  Widget _startDateField(BuildContext context) {
    final bloc = context.read<CreateNotificationBloc>();
    final startDate = bloc.state.startDate;
    final initialValue = intl.DateFormat.yMd().format(startDate);
    final controller = TextEditingController(text: initialValue);

    return Expanded(
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(labelText: "Start date"),
        readOnly: true,
        canRequestFocus: false,
        onTap: () async {
          final date = await showDatePicker(
            context: context,
            initialDate: startDate,
            firstDate: DateTime.now(),
            lastDate: DateTime(3000),
          );

          bloc.add(CreateNotificationEvent.changeStartDate(
            startDate: startDate.copyWith(
              year: date?.year,
              month: date?.month,
              day: date?.day,
            ),
          ));
        },
      ),
    );
  }

  Widget _frequencyTypeDropdownField(BuildContext context) {
    final bloc = context.read<CreateNotificationBloc>();
    final items = FrequencyType.values
        .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e.name),
            ))
        .toList();

    return DropdownButtonFormField(
      value: bloc.state.frequencyType,
      decoration: const InputDecoration(labelText: "Frequency type"),
      items: items,
      onChanged: (value) => bloc.add(CreateNotificationEvent.changeType(
          frequencyType: value ?? FrequencyType.none)),
    );
  }

  Widget _frequencyAmountField(BuildContext context) {
    final bloc = context.read<CreateNotificationBloc>();
    final initialValue = bloc.state.frequencyAmount;

    return TextFormField(
      initialValue: initialValue.toString(),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: const InputDecoration(labelText: "Frequency amount"),
      onChanged: (value) => bloc.add(CreateNotificationEvent.changeAmount(
          frequencyAmount: int.tryParse(value) ?? 1)),
      keyboardType: TextInputType.number,
    );
  }

  Widget _doneButton(BuildContext context) {
    final bloc = context.read<CreateNotificationBloc>();
    final isEnabled = bloc.state.frequencyType != FrequencyType.none;

    return FilledButton.icon(
      onPressed: isEnabled ? () => _addNotificationButtonAction(context) : null,
      icon: const Icon(Icons.done_rounded),
      label: const Text('Done'),
    );
  }

  Future<void> _addNotificationButtonAction(BuildContext context) async {
    final bloc = context.read<CreateNotificationBloc>();
    bloc.add(CreateNotificationEvent.save());

    Navigator.maybePop(context);
  }
}
