import 'dart:isolate';

Future<void> main() async {

   print('Before task trigerred');
   final receivePort = ReceivePort();
   await Isolate.spawn(processData, receivePort.sendPort);
   receivePort.listen((message){
     print(message);
   });
   print('After task trigerred');
   
}


void processData(SendPort sendPort){

  for(int i=0 ; i< 100000000; i++){
  }
  sendPort.send('Data Processing Done');  
}