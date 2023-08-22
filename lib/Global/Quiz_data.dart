import "package:flutter/material.dart";


///Global variable
List< Map <String, dynamic> > dataBase = [
  //_________________________(1)
  {
    "Category": "Sport Test",
    "color":  const Color.fromRGBO(125,110,131,1.000),
    "data": [
      {
        "question": "How many players in Basketball game",
        "answers": [
          {"ans": "5", "Score": 1},
          {"ans": "6", "Score": 0},
          {"ans": "7", "Score": 0},
          {"ans": "8", "Score": 0},
        ]
      },
      {
        "question": "Who won the Mr.Olympia in 2020/2021",
        "answers": [
          {"ans": "Mohamed Salah", "Score": 0},
          {"ans": "Mohamed Ramadan", "Score": 0},
          {"ans": "Big Ramy", "Score": 1},
          {"ans": "Captain Yasmine", "Score": 0},
        ]
      },
      {
        "question": "Who won 2022 FIFA World Cup",
        "answers": [
          {"ans": "Morocoo", "Score": 0},
          {"ans": "France", "Score": 0},
          {"ans": "Croatia", "Score": 0},
          {"ans": "argentine", "Score": 1},
        ]
      }
    ]
  },
  //___________________________(2)
  {
    "Category": "History Test",
    "color": const Color.fromARGB(125, 110, 131,170),
    "data": [
      {
        "question": "Who is the leader of 1919 revolution",
        "answers": [
          {"ans": "Mostafa Kamel", "Score": 0},
          {"ans": "Gamal Abd El-Nasser", "Score": 0},
          {"ans": "Mohamed Farid", "Score": 0},
          {"ans": "Saad Zaghloul", "Score": 1},
        ]
      },
      {
        "question": "ًWho killed Ali Bey al-Kabir",
        "answers": [
          {"ans": "Mostafa Kamel", "Score":0},
          {"ans": "Mohamed Ali", "Score": 0},
          {"ans": "Mohamed Farid", "Score": 0},
          {"ans": "Mohamed Abo el-dahap", "Score": 1},
        ]
      },
      {
        "question": "When did the second world war happen",
        "answers": [
          {"ans": "1938", "Score": 0},
          {"ans": "1939", "Score": 1},
          {"ans": "1940", "Score": 0},
          {"ans": "1913", "Score": 0},
        ]
      }
    ]
  },
  //___________________________(3)
  {
    "Category": "General Test",
    "color": const Color.fromARGB(255, 163, 140, 162),
    "data": [
      {
        "question": "Which school of poetry does Ibraim Nagy belong",
        "answers": [
          {"ans": "Lollo", "Score": 0},
          {"ans": "Abollo", "Score": 1},
          {"ans": "Old school", "Score": 0},
          {"ans": "Modern school", "Score": 0},
        ]
      },
      {
        "question": "What is the largest continent in the world",
        "answers": [
          {"ans": "Asia", "Score": 1},
          {"ans": "Africa", "Score": 0},
          {"ans": "Europ", "Score": 0},
          {"ans": "America", "Score": 0},
        ]
      },
      {
        "question": "Who discoverd the Americas",
        "answers": [
          {"ans": "Ibraham Lincoln", "Score": 0},
          {"ans": "Neil Armstrong", "Score": 0},
          {"ans": "Christopher Columbus", "Score": 1},
          {"ans": "Mohamed Ali", "Score": 0},
        ]
      }
    ]
  },
  //____________________________(4)
  {
    "Category": "Math Test",
    "color": const Color.fromARGB(255, 189, 150, 197),
    "data": [
      {
        "question": "What is the value of x in the equation 2x + 3 = 11?",
        "answers": [
          {"ans": "2", "Score": 0},
          {"ans": "3", "Score": 0},
          {"ans": "4", "Score": 1},
          {"ans": "5", "Score": 0},
        ]
      },
      {
        "question": "What is the area of a circle with a radius of 5 cm?",
        "answers": [
          {"ans": "25π cm^2", "Score": 1},
          {"ans": "10π cm^2", "Score": 0},
          {"ans": "5π cm^2", "Score": 0},
          {"ans": "π cm^2", "Score": 0},
        ]
      },
      {
        "question":
            "What is the name of the property that states a(b + c) = ab + ac?",
        "answers": [
          {"ans": "Associative property", "Score": 0},
          {"ans": "Commutative property", "Score": 0},
          {"ans": "Distributive property", "Score": 1},
          {"ans": "Identity property", "Score": 0},
        ]
      }
    ]
  },
  //____________________________(5)
  {
    "Category": "Science Test",
    "color": const Color.fromRGBO(150, 182, 197, 1.000),
    "data": [
      {
        "question":
            "What is the name of the process by which plants make their own food using sunlight, water, and carbon dioxide?",
        "answers": [
          {"ans": "Respiration", "Score": 0},
          {"ans": "Photosynthesis", "Score": 1},
          {"ans": "Transpiration", "Score": 0},
          {"ans": "Decomposition", "Score": 0},
        ]
      },
      {
        "question":
            "What is the smallest unit of life that can perform all the functions of living things?",
        "answers": [
          {"ans": "Cell", "Score": 1},
          {"ans": "Molecule", "Score": '0'},
          {"ans": "Atom", "Score": 0},
          {"ans": "Organ", "Score": 0},
        ]
      },
      {
        "question":
            "What is the name of the force that attracts objects with mass to each other?",
        "answers": [
          {"ans": "Gravity", "Score": 1},
          {"ans": "Friction", "Score": 0},
          {"ans": "Magnetism", "Score": 0},
          {"ans": "Electricity", "Score": 0},
        ]
      },
    ]
  },
  //____________________________(6)
  {
    "Category": "English Test",
    "color": Color.fromARGB(255, 177, 135, 117),
    "data": [
      {
        "question": "What is the synonym of “beautiful”?",
        "answers": [
          {"ans": "Pretty", "Score": 1},
          {"ans": "Ugly", "Score": 0},
          {"ans": "Angry", "Score": 0},
          {"ans": "Sad", "Score": 0},
        ]
      },
      {
        "question": "What is the antonym of “happy”?",
        "answers": [
          {"ans": "Joyful", "Score": 0},
          {"ans": "Cheerful", "Score": 0},
          {"ans": "Unhappy", "Score": 1},
          {"ans": "Glad", "Score": 0},
        ]
      },
      {
        "question":
            "What is the correct spelling of the word that means “a large, hairy spider”?",
        "answers": [
          {"ans": "Tarantula", "Score": 1},
          {"ans": "Tarantulla", "Score": 0},
          {"ans": "Tarrantula", "Score": 0},
          {"ans": "Tarrantulla", "Score": 0},
        ]
      },
    ]
  },
];


TextEditingController userName = TextEditingController();
