1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((2, 6)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((10, 6)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((14, 5)).

wall((12, 5)).

wall((14, 4)).

wall((12, 4)).

wall((14, 3)).

wall((12, 3)).

wall((14, 2)).

wall((12, 2)).

wall((13, 0)).

wall((12, 0)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((5, 5)).

wall((4, 4)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END

wall((3, 4)).
%AAA
state_at((4, 5), 34).
%BBB
%CCC
time(34..250).
%DDD
%ANSWER SETS

%state_at((4,5),34)
%state_at((3,5),35)
%action(left,34)
%state_at((2,5),36)
%action(left,35)
%state_at((2,4),37)
%action(up,36)
%action(up,37)
%state_at((2,3),38)
%action(up,38)
%state_at((2,2),39)
%action(up,39)
%state_at((2,1),40)
%action(right,40)
%state_at((3,1),41)
%action(right,41)
%state_at((4,1),42)
%action(right,42)
%state_at((5,1),43)
%action(right,43)
%state_at((6,1),44)
%action(right,44)
%state_at((7,1),45)
%action(right,45)
%state_at((8,1),46)
%action(right,46)
%state_at((9,1),47)
%action(right,47)
%state_at((10,1),48)
%action(right,48)
%state_at((11,1),49)
%action(right,49)
%state_at((12,1),50)
%action(right,50)
%state_at((13,1),51)
%action(right,51)
%state_at((14,1),52)
%action(right,52)
%state_at((15,1),53)
%action(right,53)
%state_at((16,1),54)
