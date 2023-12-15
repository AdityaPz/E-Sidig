import 'package:flutter/material.dart';

// import '../../Components/AppBarr.dart';
// import '../../Components/Setting.dart';

class volumetabung extends StatefulWidget {
  const volumetabung({Key? key}) : super(key: key);

  @override
  State<volumetabung> createState() => _volumetabungState();
}

class _volumetabungState extends State<volumetabung> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController Bill1 = TextEditingController();
  TextEditingController Bill2 = TextEditingController();
  TextEditingController Hitung = TextEditingController();

  List<Map<String, dynamic>> resultList =
      []; // Lista per memorizzare i risultati

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: appbar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: Bill1,
                    decoration: InputDecoration(
                      labelText: 'Bilangan 1',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: Bill2,
                    decoration: InputDecoration(
                      labelText: 'Bilangan 2',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: Hitung,
                    decoration: InputDecoration(
                      labelText: 'Hasil Hitung',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 410.0,
                    height: 58.0,
                    child: MaterialButton(
                      color: Color.fromARGB(255, 51, 66, 164),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double bilangan1 = double.parse(Bill1.text);
                          double bilangan2 = double.parse(Bill2.text);
                          double hasil =
                              3.14 * (bilangan1 * bilangan1) * bilangan2;
                          Hitung.text = hasil.toString();
                          setState(() {
                            resultList.add({
                              'bilangan1': bilangan1,
                              'bilangan2': bilangan2,
                              'hasil': hasil,
                            });
                          });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: const Text(
                          "HITUNG",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: resultList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        'Bilangan 1: ${resultList[index]['bilangan1']}, Bilangan 2: ${resultList[index]['bilangan2']}'),
                    subtitle: Text('Hasil: ${resultList[index]['hasil']}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
