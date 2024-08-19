import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' as intl;
import 'package:reminder/models/frequency_type.dart';
import 'package:reminder/pages/schedule_notification/bloc/create/create_notification_bloc.dart';

class CreateScheduleNotificationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  CreateScheduleNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateScheduleNotificationBloc,
        CreateScheduleNotificationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'New Schedule Notification',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            centerTitle: true,
            leading: const CloseButton(),
          ),
          body: Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _titleField(context),
                const SizedBox(height: 16),
                _bodyField(context),
                const SizedBox(height: 16),
                Row(
                  children: [
                    _startTimeField(context),
                    const SizedBox(width: 16),
                    _startDateField(context),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _frequencyTypeDropdownField(context),
                    const SizedBox(width: 16),
                    _frequencyAmountField(context),
                  ],
                ),
                const SizedBox(height: 16),
                _frequencyResult(context),
              ],
            ),
          ),
          floatingActionButton: _doneButton(context),
        );
      },
    );
  }

  Widget _titleField(BuildContext context) {
    final bloc = context.read<CreateScheduleNotificationBloc>();
    final initialValue = bloc.state.title;

    return TextFormField(
      initialValue: initialValue,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(labelText: "Title"),
      onChanged: (value) =>
          bloc.add(CreateScheduleNotificationEvent.changeTitle(title: value)),
      validator: (value) {
        if (value == null) return null;

        if (value.isEmpty) {
          return 'Field is empty';
        }

        return null;
      },
    );
  }

  Widget _bodyField(BuildContext context) {
    final bloc = context.read<CreateScheduleNotificationBloc>();
    final initialValue = bloc.state.title;

    return TextFormField(
      initialValue: initialValue,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        labelText: "Body",
        helperText: "(Optional)",
      ),
      onChanged: (value) =>
          bloc.add(CreateScheduleNotificationEvent.changeBody(body: value)),
    );
  }

  Widget _startTimeField(BuildContext context) {
    final bloc = context.read<CreateScheduleNotificationBloc>();
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
            initialTime: TimeOfDay(
              hour: startDate.hour,
              minute: startDate.minute,
            ),
          );

          bloc.add(CreateScheduleNotificationEvent.changeStartDate(
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
    final bloc = context.read<CreateScheduleNotificationBloc>();
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
            lastDate: DateTime(DateTime.now().year + 1),
          );

          bloc.add(CreateScheduleNotificationEvent.changeStartDate(
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
    final bloc = context.read<CreateScheduleNotificationBloc>();
    final items = FrequencyType.values
        .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e.name),
            ))
        .toList();
    final value = bloc.state.frequencyType;
    final isSelected = value != FrequencyType.none;

    return Expanded(
      child: DropdownButtonFormField(
        value: isSelected ? value : null,
        decoration: const InputDecoration(labelText: "Frequency"),
        items: items,
        onChanged: (value) => bloc.add(
            CreateScheduleNotificationEvent.changeFrequencyType(
                frequencyType: value ?? FrequencyType.none)),
        validator: (value) {
          if (value == null) return null;

          if (value == FrequencyType.none) {
            return 'Type is not selected';
          }

          return null;
        },
      ),
    );
  }

  Widget _frequencyAmountField(BuildContext context) {
    final bloc = context.read<CreateScheduleNotificationBloc>();
    final initialValue = bloc.state.frequencyAmount;

    return Expanded(
      child: TextFormField(
        initialValue: initialValue.toString(),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(labelText: "Frequency amount"),
        onChanged: (value) => bloc.add(
            CreateScheduleNotificationEvent.changeFrequencyAmount(
                frequencyAmount: int.tryParse(value) ?? 1)),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _frequencyResult(BuildContext context) {
    final bloc = context.read<CreateScheduleNotificationBloc>();
    final frequencyType = bloc.state.frequencyType;
    final frequencyAmount = bloc.state.frequencyAmount;
    final isSelected = frequencyType != FrequencyType.none;

    return Text(
      isSelected
          ? 'Every $frequencyAmount ${frequencyType.title}'
          : 'Select frequency',
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.apply(color: Theme.of(context).colorScheme.primary),
    );
  }

  Widget _doneButton(BuildContext context) {
    return FilledButton.icon(
      onPressed: () => _addNotificationButtonAction(context),
      icon: const Icon(Icons.done_rounded),
      label: const Text('Done'),
    );
  }

  Future<void> _addNotificationButtonAction(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      context
          .read<CreateScheduleNotificationBloc>()
          .add(CreateScheduleNotificationEvent.save());

      Navigator.pop(context);
    }
  }
}
