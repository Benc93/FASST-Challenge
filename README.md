FASST Challenge: Architect Badge Test
===============
##Briefing
  
The Challenge was to design a simple underground train network called FAAST (Fast And Accessible Super Tube) with the following capabilities:  
  
1. The system must contain trains  
2. Trains can travel between stations   
3. Inside the stations, passengers must be able to alight and board the train  
4. A passenger must 'touch in' and 'touch out' of their station  
5. Each coach has a maximum passenger capacity  
6. Each train has a number of coaches (not explicitly fixed)  
7. As a bonus - include a payments system where only passengers with more than £2 can 'touch in' 
  
##Analysis
  
Based on the briefing, I identified the following classes: *Train*, *Passenger*, and *Station*.  
  
Whilst *Coach* is a noun and could possibly be included as a class in future versions, I felt that its only addition to the scope of the brief was to define capacity, which could easily  be set as an instance variable within the *Train* class and was therefore omitted.  
  
With only three classes, the map for the Domain would be simple, without missing any capabilities on the original brief. The CRC cards were build up as follows:  

| Train                             |
| ----------------- |:-------------:|
| Responsibilities  | Collaberators |
| ----------------- |:-------------:|
|                   | Station       | 
|                   | Passenger     |
|                   |               |

