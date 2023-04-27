import 'package:flutter/material.dart';
import 'package:learning/model/model.dart';

import '../widget/item_familyMemeber.dart';

class Family_Members extends StatelessWidget {
  Family_Members({super.key});

  @override
  final List<FamilyMember> storeData = [
    FamilyMember(
      EnName: 'Daughter',
      JpName: 'Musume',
      Image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    FamilyMember(
      EnName: 'Father',
      JpName: 'Chichioya',
      Image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    FamilyMember(
      EnName: 'GrandFather',
      JpName: 'Ojīsan',
      Image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/gfather.wav',
    ),
    FamilyMember(
      EnName: 'GrandMother',
      JpName: 'O bāchan',
      Image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/gmother.wav',
    ),
    FamilyMember(
      EnName: 'Mother',
      JpName: 'Hahaoya',
      Image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    FamilyMember(
      EnName: 'Older_Brother',
      JpName: 'Ani',
      Image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/obother.wav',
    ),
    FamilyMember(
      EnName: 'Older_Sister',
      JpName: 'Ane',
      Image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/osister.wav',
    ),
    FamilyMember(
      EnName: 'Son',
      JpName: 'Musuko',
      Image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    FamilyMember(
      EnName: 'Yonger_Brother',
      JpName: 'Yongāburazā',
      Image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/ybrohter.wav',
    ),
    FamilyMember(
      EnName: 'Yonger_Sister',
      JpName: 'Yongāshisutā',
      Image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/ysister.wav',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        title: Text(
          'Family Member',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(
          width: double.infinity,
          height: 0.5,
          color: Colors.white,
        ),
        itemCount: storeData.length,
        itemBuilder: (context, index) {
          return Items(familyMember: storeData[index]);
        },
      ),
    );
  }
}
