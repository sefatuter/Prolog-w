speed(ford,100).
speed(chevy,105).
speed(dodge,95).
speed(volvo,250).
time(ford,25).
time(chevy,21).
time(volvo,10).
distance(X,Y) :- speed(X,Speed),time(X,Time), Y is Speed * Time.

