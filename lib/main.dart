import 'package:flutter/material.dart';

main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "flutter app",debugShowCheckedModeBanner: false,
      theme:ThemeData(primarySwatch: Colors.brown),
      home: DashBoardScreen(),
    );
  }

}
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DatePicker'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select Date',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () async {
                DateTime? datepicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2025));

                if(datepicked!=null){
                  print('Date selected: ${datepicked.day}-${datepicked.month}-${datepicked.year}') ;
                }

               }, 
                  child: Text('Show')),
              ElevatedButton(
                  onPressed: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime:TimeOfDay.now(),
                    initialEntryMode:TimePickerEntryMode.input
                    //initialEntryMode:TimePickerEntryMode.dial

                );
                if (pickedTime!= null){
                  print ('Time selected:${pickedTime.hour}:${pickedTime.minute}');
                }
              }, child: Text('Select Time'))

            ],
          ),
        )

    );
  }
}
