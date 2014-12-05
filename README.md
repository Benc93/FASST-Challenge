End of Week 2 Challenge: FAAST
===============
##Briefing
  
The Challenge was to design a simple underground train network called FAAST (Fast And Accessible Super Tube) with the following capabilities:  
  
1. The system must contain trains  
2. Trains can exit and enter stations   
3. Inside the stations, passengers must be able to alight and board the train  
4. A passenger must 'touch in' and 'touch out' of their station  
5. Each coach has a maximum passenger capacity  
6. Each train has a number of coaches (not explicitly fixed)  
7. As a bonus - include a payments system where only passengers with more than £2 can 'touch in' 
  
##Analysis
  
Based on the briefing, I identified the following classes: **Train**, **Passenger**, and **Station**.  
  
Whilst **Coach** is a noun and could possibly be included as a class in future versions, I felt that its only addition to the scope of the brief was to define the capacity of train instances, which could easily be set as an instance variable within the **Train** class and was therefore omitted.  

Equally, whilst a **Touch-In Station** might serve as a class, its only function would be to 'touch in/out' passengers which could easily be delivered as a method under the **Station** with no loss of scope, even with the addition of a payments system. 
  
With only three classes, the map for the Domain would be simple, without sacrificing any capabilities on the original brief. The CRC cards were built up as follows:  

**Train**  
  
| Responsibilities                              | Collaberators |
| :-------------------------------------------- |:--------------|
| Must allow passengers to board/alight         | Station       | 
| Must know its own capacity                    | Passenger     |
| Must be able to arrive/depart from a station  |               |
| Must NOT admit touched out passengers         |               | 
| Must NOT admit passengers to a full train     |               | 
    
    
**Station**  
  
| Responsibilities                              | Collaberators |
| :-------------------------------------------- |:--------------|
| Must allow passengers to enter/leave          | Train         | 
| Must allow trains to arrive/depart            | Passenger     |
| Must allow passengers to 'Touch in/out'       |               |
| Bonus: Must prevent touch-ins with <£2 GBP    |               |
    
    
**Passenger**  
  
| Responsibilities                              | Collaberators |
| :-------------------------------------------- |:--------------|
| Must be able to 'Touch in/out'                | Station       | 
| Must have a pre defined capacity              | Train         |
| Must be able to arrive/depart from a station  |               |
| Bonus: Must be able to hold money             |               |
    
    
## Execution
  
I built my classes in the following order: **Passenger**, **Station**, and **Train**.

The test files are located in the 'spec' folder, and the class files in the 'lib' folder. The files were built using Test Driven Development principles (Red > Green > Refactor).

There was a peer review process after the weekend for fellow students to: review my code & tests; highlight possible improvement areas; and give insight into their take on the challenge. This was enormously helpful as a learning exercise, and led to some late stage refactoring and an increased use of doubles in the test files. 
  
Further work on the project might include: 
  
+ Searching for common functionality, where necessary writing a module to reduce code repetition.  
+ Extended use of doubles in leiu of co-operating class instances for tests.   **(Completed during peer review)**
+ Building multiple stations and activity between them. 
+ Extending the scope of the system to increase/reduce train capacity (defined as multiples of coaches), and/or perhaps adding a Ticket Office to handle adding funds to passengers.  
   
   
**END**
