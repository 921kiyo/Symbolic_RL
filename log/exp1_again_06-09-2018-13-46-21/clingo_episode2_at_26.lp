1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 4)).

wall((3, 7)).

wall((2, 7)).

wall((1, 7)).

wall((0, 6)).

wall((0, 5)).

wall((4, 4)).

wall((4, 7)).

wall((5, 7)).

wall((5, 4)).

wall((6, 7)).

wall((7, 7)).

wall((9, 6)).

wall((8, 7)).

wall((6, 4)).

wall((12, 3)).

wall((9, 0)).

wall((8, 0)).

wall((6, 3)).

wall((0, 4)).

wall((4, 0)).

wall((5, 0)).

wall((13, 7)).

wall((12, 7)).

wall((14, 7)).

wall((15, 7)).

wall((17, 6)).

wall((16, 7)).

wall((17, 5)).

wall((16, 4)).

wall((15, 4)).

wall((12, 2)).

wall((15, 0)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((0, 3)).

wall((12, 1)).

wall((11, 0)).
%AAA
state_at((11, 5), 26).
%BBB
%CCC
time(26..250).
%DDD
%ANSWER SETS

%state_at((11,5),26)
%state_at((12,5),27)
%action(right,26)
%action(right,27)
%state_at((13,5),28)
%action(up,28)
%state_at((13,4),29)
%action(up,29)
%state_at((13,3),30)
%action(right,30)
%state_at((14,3),31)
%action(right,31)
%state_at((15,3),32)
%action(right,32)
%state_at((16,3),33)
%action(up,33)
%state_at((16,2),34)
%action(up,34)
%state_at((16,1),35)
