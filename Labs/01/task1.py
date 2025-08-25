import pandas as pd

attr = ('test_score' , 'writing' , 'reading', 'math', 'hours');

values = [
  (45, 60, 55, 70, 2),
  (30, 40, 35, 60, 1),
  (50, 55, 52, 80, 3),
  (25, 35, 30, 50, 1),
  (60, 65, 62, 85, 4),
  (40, 45, 42, 65, 2),
  (35, 38, 36, 55, 1),
  (55, 58, 54, 75, 3),
  (20, 25, 22, 40, 1),
  (48, 52, 50, 72, 2),
];

print(pd.DataFrame(values, columns=attr))
