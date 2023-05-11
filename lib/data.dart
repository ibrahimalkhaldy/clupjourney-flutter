import 'package:inu_bus/models/journey.dart';
import 'package:inu_bus/models/user.dart';
import 'package:inu_bus/models/journey.dart.dart';

 const user currentuser = user(
   firstname:'ibrahim',
   lasttname: 'alkhaldy',
   imageURL: '"https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80");'
 );
 const List <user> allUsers=[
user(
firstname:'Ahmad',
lasttname: 'alkhaldy',
imageURL: '"https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80");'
),
user(
firstname:'Zaki',
lasttname: 'alkhaldy',
imageURL:  "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80"
),
   user(
       firstname:'Abdo',
       lasttname: 'almloshe',
       imageURL: "https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
   ),
   user(
       firstname:'khaled',
       lasttname: 'zubide',
       imageURL: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80"
   ),
   user(
       firstname:'abdalrahman',
       lasttname: 'hamdan',
       imageURL: "https://images.unsplash.com/photo-1565464027194-7957a2295fb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
   ),
   user(
       firstname:'mohammad',
       lasttname: 'hamdan',
       imageURL: "https://images.unsplash.com/photo-1583195764036-6dc248ac07d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1055&q=80"
   ),
   user(
       firstname:'ahmad',
       lasttname: 'aldepes',
       imageURL: "https://images.unsplash.com/photo-1590086783191-a0694c7d1e6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80"
   ),
   user(
       firstname:'ryad',
       lasttname: 'altobase',
       imageURL: "https://images.unsplash.com/photo-1592827095305-68f21edefb82?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
   ),
   user(
       firstname:'suhiab',
       lasttname: 'darwish',
       imageURL:  "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
   ),
   user(
       firstname:'anas',
       lasttname: 'darwish',
       imageURL: "https://images.unsplash.com/photo-1583341612074-ccea5cd64f6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80"
   ),
   user(
       firstname:'hamza',
       lasttname: 'alkhaldy',
       imageURL: "https://images.unsplash.com/photo-1567784177951-6fa58317e16b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
   ),
   user(
       firstname:'moawya',
       lasttname: 'alkhaldy',
       imageURL: "https://images.unsplash.com/photo-1546567850-8a49d669d37a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=564&q=80"
   ),
   user(
       firstname:'abdalkarem',
       lasttname: 'abunamer',
       imageURL: "https://images.unsplash.com/photo-1544266401-0c13025c8fd6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
   ),
   user(
       firstname:'mahmod',
       lasttname: 'grifat',
       imageURL:  "https://images.unsplash.com/photo-1541855492-581f618f69a0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
   ),
   user(
       firstname:'moath',
       lasttname: 'khana',
       imageURL: "https://images.unsplash.com/photo-1541577141970-eebc83ebe30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80"
   ),

   user(
       firstname:'belal',
       lasttname: 'alnserat',
       imageURL:  "https://images.unsplash.com/photo-1586083702768-190ae093d34d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=695&q=80"
   ),
   user(
       firstname:'anwar',
       lasttname: 'adel',
       imageURL:  "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
   ),
   user(
       firstname:'ibrahim',
       lasttname: 'mohamad',
       imageURL: "https://images.unsplash.com/photo-1507038732509-8b1a9623223a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80"
   ),

   user(
       firstname:'messi',
       lasttname: 'lionel',
       imageURL: "https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2122&q=80"
   ),
   user(
       firstname:'lionel',
       lasttname: 'scaloni',
       imageURL: "https://images.unsplash.com/photo-1562159278-1253a58da141?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
   ),
 ];
     final List<journey> journeyList =[
       journey(
         club: 'Flutter Time',
         name: 'irbid city',
         Speakers: (List<user>.from(allUsers)..shuffle()).getRange(0, 5).toList(),
         FoollowedBySpeakers: List<user>.from(allUsers)..shuffle(),
         others: List<user>.from(allUsers)..shuffle(),
       ),
       journey(
         club: 'Cryptocurrency Time',
         name: 'love and bitcoin edition 💰',
         Speakers: (List<user>.from(allUsers)..shuffle()).getRange(0, 5).toList(),
         FoollowedBySpeakers: List<user>.from(allUsers)..shuffle(),
         others: List<user>.from(allUsers)..shuffle(),
       ),
       journey(
        club: 'The best journey',
        name: '⏰ A Very Important Person on Good Time',
         Speakers: (List<user>.from(allUsers)..shuffle()).getRange(0, 5).toList(),
         FoollowedBySpeakers: List<user>.from(allUsers)..shuffle(),
         others: List<user>.from(allUsers)..shuffle(),
       ),
       journey(
          club: 'Hello World Time',
          name: 'Think with Developers about anything',
         Speakers: (List<user>.from(allUsers)..shuffle()).getRange(0, 5).toList(),
         FoollowedBySpeakers: List<user>.from(allUsers)..shuffle(),
         others: List<user>.from(allUsers)..shuffle(),
       ),
     ];