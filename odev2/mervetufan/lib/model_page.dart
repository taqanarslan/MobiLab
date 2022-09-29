import 'package:flutter/material.dart';
import 'package:mervetufan/model/note_model.dart';
import 'package:mervetufan/services/note_service.dart';


class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  List<NoteModel>? _notes;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    _notes = await NoteService.instance.getTodos();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _notes == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _notes?.length ?? 0,
              itemBuilder: (context, index) {
                final note = _notes![index];
                return SwitchListTile(
                  title: Text(note.title!),
                  value: note.completed ?? false,
                  onChanged: (bool? value) {
                    setState(() {
                      note.completed = !(note.completed ?? false);
                    });
                  },
                );
              },
            ),
    );
  }
}
