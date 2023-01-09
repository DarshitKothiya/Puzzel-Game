class Game {
  static int currentScore = 0;

  static List allScore = [];

  static List animal = [
    {
      'drag': [
        {
          'data': 'lion',
          'child': '🦁',
          'isDragged': false,
        },
        {
          'data': 'tiger',
          'child': '🐯',
          'isDragged': false,
        },
        {
          'data': 'cat',
          'child': '🐈',
          'isDragged': false,
        },
        {
          'data': 'dog',
          'child': '🐶',
          'isDragged': false,
        },
        {
          'data': 'deer',
          'child': '🦌',
          'isDragged': false,
        },
      ]
    },
    {
      'target': [
        {
          'title': 'Cat',
          'data': 'cat',
          'child': '🐈',
          'isDragged': false,
        },
        {
          'title': 'Lion',
          'data': 'lion',
          'child': '🦁',
          'isDragged': false,
        },
        {
          'title': 'Deer',
          'data': 'deer',
          'child': '🦌',
          'isDragged': false,
        },
        {
          'title': 'Tiger',
          'data': 'tiger',
          'child': '🐯',
          'isDragged': false,
        },
        {
          'title': 'Dog',
          'data': 'dog',
          'child': '🐶',
          'isDragged': false,
        },
      ]
    }
  ];

  static List fruit = [
    {
      'drag': [
        {
          'data': 'apple',
          'child': '🍎',
          'isDragged': false,
        },
        {
          'data': 'banana',
          'child': '🍌',
          'isDragged': false,
        },
        {
          'data': 'pineapple',
          'child': '🍍',
          'isDragged': false,
        },
        {
          'data': 'mango',
          'child': '🥭',
          'isDragged': false,
        },
        {
          'data': 'corn',
          'child': '🌽',
          'isDragged': false,
        },
      ]
    },
    {
      'target': [
        {
          'title': 'Mango',
          'data': 'mango',
          'child': '🥭',
          'isDragged': false,
        },
        {
          'title': 'Pine\napple',
          'data': 'pineapple',
          'child': '🍍',
          'isDragged': false,
        },
        {
          'title': 'Banana',
          'data': 'banana',
          'child': '🍌',
          'isDragged': false,
        },
        {
          'title': 'Corn',
          'data': 'corn',
          'child': '🌽',
          'isDragged': false,
        },
        {
          'title': 'Apple',
          'data': 'apple',
          'child': '🍎',
          'isDragged': false,
        },
      ]
    }
  ];

  static List vegetable = [
    {
      'drag': [
        {
          'data': 'tomato',
          'child': '🍅',
          'isDragged': false,
        },
        {
          'data': 'eggplant',
          'child': '🍆',
          'isDragged': false,
        },
        {
          'data': 'cucumber',
          'child': '🥒',
          'isDragged': false,
        },
        {
          'data': 'bell pepper',
          'child': '🫑',
          'isDragged': false,
        },
        {
          'data': 'carrot',
          'child': '🥕',
          'isDragged': false,
        },
      ]
    },
    {
      'target': [
        {
          'title': 'Bell \n pepper',
          'data': 'bell pepper',
          'child': '🫑',
          'isDragged': false,
        },
        {
          'title': 'Cucumber',
          'data': 'cucumber',
          'child': '🥒',
          'isDragged': false,
        },
        {
          'title': 'Carrot',
          'data': 'carrot',
          'child': '🥕',
          'isDragged': false,
        },
        {
          'title': 'Tomato',
          'data': 'tomato',
          'child': '🍅',
          'isDragged': false,
        },
        {
          'title': 'Eggplant',
          'data': 'eggplant',
          'child': '🍆',
          'isDragged': false,
        },
      ]
    }
  ];

  static List vehicle = [
    {
      'drag': [
        {
          'data': 'car',
          'child': '🚗',
          'isDragged': false,
        },
        {
          'data': 'cycle',
          'child': '🚲',
          'isDragged': false,
        },
        {
          'data': 'bike',
          'child': '🏍️',
          'isDragged': false,
        },
        {
          'data': 'truck',
          'child': '🚚',
          'isDragged': false,
        },
        {
          'data': 'train',
          'child': '🚂',
          'isDragged': false,
        },
      ]
    },
    {
      'target': [
        {
          'title': 'Truck',
          'data': 'truck',
          'child': '🚚',
          'isDragged': false,
        },
        {
          'title': 'Train',
          'data': 'train',
          'child': '🚂',
          'isDragged': false,
        },
        {
          'title': 'Car',
          'data': 'car',
          'child': '🚗',
          'isDragged': false,
        },
        {
          'title': 'Cycle',
          'data': 'cycle',
          'child': '🚲',
          'isDragged': false,
        },
        {
          'title': 'Bike',
          'data': 'bike',
          'child': '🏍️',
          'isDragged': false,
        },
      ]
    }
  ];

  static List bird = [
    {
      'drag': [
        {
          'data': 'dove',
          'child': '🕊️',
          'isDragged': false,
        },
        {
          'data': 'duck',
          'child': '🦆',
          'isDragged': false,
        },
        {
          'data': 'eagle',
          'child': '🦅',
          'isDragged': false,
        },
        {
          'data': 'swan',
          'child': '🦢',
          'isDragged': false,
        },
        {
          'data': 'owl',
          'child': '🦉',
          'isDragged': false,
        },
      ]
    },
    {
      'target': [
        {
          'title': 'Owl',
          'data': 'owl',
          'child': '🦉',
          'isDragged': false,
        },
        {
          'title': 'Swan',
          'data': 'swan',
          'child': '🦢',
          'isDragged': false,
        },
        {
          'title': 'Duck',
          'data': 'duck',
          'child': '🦆',
          'isDragged': false,
        },
        {
          'title': 'Dove',
          'data': 'dove',
          'child': '🕊️',
          'isDragged': false,
        },
        {
          'title': 'Eagle',
          'data': 'eagle',
          'child': '🦅',
          'isDragged': false,
        },
      ]
    }
  ];

  static List guess = [
    [
      {'q': "Guess the KING of jungle?"},
      {
        'drag': [
          {
            'data': 'lion',
            'child': '🦁',
            'isDragged': false,
          },
          {
            'data': 'tiger',
            'child': '🐯',
            'isDragged': false,
          },
          {
            'data': 'cat',
            'child': '🐈',
            'isDragged': false,
          },
          {
            'data': 'dog',
            'child': '🐶',
            'isDragged': false,
          },
          {
            'data': 'deer',
            'child': '🦌',
            'isDragged': false,
          },
        ]
      },
      {
        'data': 'lion',
        'child': '🦁',
        'isDragged': false,
      }
    ],
    [
      {'q': "Guess SUMMER fruit ?"},
      {
        'drag': [
          {
            'data': 'apple',
            'child': '🍎',
            'isDragged': false,
          },
          {
            'data': 'banana',
            'child': '🍌',
            'isDragged': false,
          },
          {
            'data': 'pineapple',
            'child': '🍍',
            'isDragged': false,
          },
          {
            'data': 'mango',
            'child': '🥭',
            'isDragged': false,
          },
          {
            'data': 'corn',
            'child': '🌽',
            'isDragged': false,
          },
        ]
      },
      {
        'data': 'mango',
        'child': '🥭',
        'isDragged': false,
      },
    ],
    [
      {'q': "Guess RED vegetable ?"},
      {
        'drag': [
          {
            'data': 'tomato',
            'child': '🍅',
            'isDragged': false,
          },
          {
            'data': 'eggplant',
            'child': '🍆',
            'isDragged': false,
          },
          {
            'data': 'cucumber',
            'child': '🥒',
            'isDragged': false,
          },
          {
            'data': 'bell pepper',
            'child': '🫑',
            'isDragged': false,
          },
          {
            'data': 'carrot',
            'child': '🥕',
            'isDragged': false,
          },
        ]
      },
      {
        'data': 'tomato',
        'child': '🍅',
        'isDragged': false,
      },
    ],
    [
      {'q': "Guess the FASTEST one ?"},
      {
        'drag': [
          {
            'data': 'car',
            'child': '🚗',
            'isDragged': false,
          },
          {
            'data': 'cycle',
            'child': '🚲',
            'isDragged': false,
          },
          {
            'data': 'bike',
            'child': '🏍️',
            'isDragged': false,
          },
          {
            'data': 'truck',
            'child': '🚚',
            'isDragged': false,
          },
          {
            'data': 'train',
            'child': '🚂',
            'isDragged': false,
          },
        ]
      },
      {
        'data': 'train',
        'child': '🚂',
        'isDragged': false,
      },
    ],
    [
      {'q': "Guess the KING of bird ?"},
      {
        'drag': [
          {
            'data': 'dove',
            'child': '🕊️',
            'isDragged': false,
          },
          {
            'data': 'duck',
            'child': '🦆',
            'isDragged': false,
          },
          {
            'data': 'eagle',
            'child': '🦅',
            'isDragged': false,
          },
          {
            'data': 'swan',
            'child': '🦢',
            'isDragged': false,
          },
          {
            'data': 'owl',
            'child': '🦉',
            'isDragged': false,
          },
        ]
      },
      {
        'data': 'eagle',
        'child': '🦅',
        'isDragged': false,
      },
    ],
  ];
}
