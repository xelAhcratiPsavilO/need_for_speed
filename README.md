<h2 align="center">NECESSITY FOR SPEED</h2>
Necessity for Speed is an individual project which has per objective to demonstrate knowledge on the following areas:

* Ability to write code that is easy to change.
* Ability to test-drive my code.
* Ability to build with objects.
* Ability to fluidly work with Ruby.

## Domain Model
```
As a driver,
So that I drive a car,
I'd like a garage to release a car.
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|release_car|
```
As a driver,
So that I drive a good car,
I'd like to see if a car is working.
```
| Objects | Messages |
|--|--|
|Driver||
|Car|working?|
|Garage||
```
As a member of the crew
So I can return cars I've driven
I want to park my car at the garage
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|park_car|
```
As a member of the crew
So I can decide whether to use a garage
I want to see a car that has been parked
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|car|
```
As a member of the crew,
So that I am not confused,
I'd like garages not to release cars when there are none inside.
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|release_car(raise_error)|
```
As a crew leader,
So that I can control the distribution of cars,
I'd like garages not to accept more cars than their capacity.
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|park_car(raise_error)|
```
As a crew leader,
So that I can plan the distribution of cars,
I want a garage to have a default capacity of 20 cars.
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|park_car(raise_error)|
```
As a crew leader,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage(capacity)||
```
As a driver,
So that I reduce the chance of getting a broken car,
I'd like to report a car as broken when I return it.
```
| Objects | Messages |
|--|--|
|Driver||
|Car|report_broken|
|Garage||
```
As a crew leader,
So that I can manage broken cars,
I'd like garages not to release broken cars.
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|release_car(raise_error)|

## Diagram of Correlation

Garage <== cars ==> array </br>
Garage <== cpapacity  ==> integer </br>
Garage <== park_car ==> array </br>
Garage <== release_car ==> Car </br>
Garage <== full? ==> boolean </br>
Garage <== empty? ==> boolean </br>
Garage <== broken? ==> boolean </br>

Car <== report_broken ==> true </br>
Car <== broken? ==> boolean </br>

## Note
This project is inspired in the Boris Bikes project that you can find [here](https://github.com/makersacademy/course/blob/master/boris_bikes/0_challenge_map.md).
