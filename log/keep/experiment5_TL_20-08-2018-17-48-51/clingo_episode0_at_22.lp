1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 6)).

wall((2, 4)).

wall((3, 4)).

wall((5, 5)).

wall((4, 4)).

wall((5, 6)).

wall((4, 8)).
%AAA
state_at((4, 7), 22).
%BBB
%CCC
time(22..250).
%DDD
%ANSWER SETS

%state_at((4,7),22)
%state_at((5,7),23)
%action(right,22)
%action(right,23)
%state_at((6,7),24)
%action(up,24)
%state_at((6,6),25)
%action(right,25)
%state_at((7,6),26)
%action(right,26)
%state_at((8,6),27)
%action(right,27)
%state_at((9,6),28)
%action(up,28)
%state_at((9,5),29)
%action(up,29)
%state_at((9,4),30)
%action(right,30)
%state_at((10,4),31)
%action(up,31)
%state_at((10,3),32)
%action(right,32)
%state_at((11,3),33)
%action(right,33)
%state_at((12,3),34)
%action(right,34)
%state_at((13,3),35)
%action(right,35)
%state_at((14,3),36)
%action(up,36)
%state_at((14,2),37)
%action(up,37)
%state_at((14,1),38)
%action(right,38)
%state_at((15,1),39)
%action(right,39)
%state_at((16,1),40)
