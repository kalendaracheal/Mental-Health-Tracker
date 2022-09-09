import 'package:flutter/material.dart';
import 'package:mentalhealthtracker/widget/square.dart';

class Tools extends StatefulWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  final List tools = [
    'Meditate',
    'Exercise',
    'Reading',
     'Watch'

  ];
  final List content = [
    '''Anxiety is a feeling of unease, such as worry or fear, that can be mild or severe.

Everyone has feelings of anxiety at some point in their life. For example, 
you may feel worried and anxious about sitting an exam, or having a medical test or job interview. 
During times like these, feeling anxious can be perfectly normal.

But feelings of sadness and emptiness that last for longer than 2 weeks can 
suggest depression, especially when positive events or changes in your 
environment don’t seem to have any impact on your mood. 
''',
    '''
    Along with a low, sad, or empty mood, depression can also involve the following symptoms:

> Loss of interest or enjoyment in your usual activities and hobbies
> A sense of hopelessness or pessimism
> Anger, irritability, and restlessness
> A lack of energy or a sense of feeling slowed down
> Chronic fatigue or sleep problems
> Changes in appetite and weight
> Difficulty concentrating, making decisions, or remembering information
> Unexplained aches and pains or gastrointestinal concerns
> Feelings of guilt, worthlessness, or helplessness
> Thoughts of suicide, death, or dying
''',
    '''Anxiety disorders go beyond worry about unexpected or challenging 
    life circumstances. Your fears might center around more everyday concerns, 
    such as your health, performance at school and work, or relationships. 
    These worries can prompt lingering thoughts and fears that eventually begin to affect daily life.

The main signs of ongoing anxiety include:

> Difficulty managing fear and worry
> Irritability, physical restlessness, or a sense of being on edge
> A sense of dread, doom, or panic
> Sleep problems
> Persistent fatigue
> Brain fog
> Physical symptoms like headaches, muscle tension, nausea, and diarrhea
''',
    'Watch,,,,,,,,,,,,,,,'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: tools.length,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)
                {
                  return MyCircle(child: tools[index]);
                 }
              ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: content.length,
                itemBuilder: (context, index)
                {
                  return MySquare(child: content[index]);
                }
            ),
          ),
      ])
    );
  }
}
