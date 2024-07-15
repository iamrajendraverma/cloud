# cloud

Cloud is a public repo which describe the how to use multi-language and bloc library   in your flutter app 

### In the Bloc counter example we are dealing with 4 things.

- Cubit : Cubit is responsible to increase the state by 1 (+1 emit ) or vice versa (-1 emit) . Cubit informs the current state to the Bloc Observer and Bloc Builder.
- Bloc Observer : Bloc observer is observing the state of Cubit, whether it increases or decreases.
- Bloc Provider : Bloc provider is responsible to provide the access to their child widget.
- Bloc Builder : Bloc builder is a kind of stateful widget which updates the states of Cubit in the UI. 

<p align ="left">
<img src="counter.png" alt="drawing" width="200"/>
</p>

### In Bloc Timer  we are dealing with 
- Ticker Period Streaming : It will work for the sp duration (60 sec).In the interval of 1 sec. 
- Bloc : It handle the events and states send and received from the UI
- Bloc event : This example have play | pause | reset events
- Bloc States : Initial state | Run and Pause State | Run in progress State | Complete State 
- Equatable
- part of 
- part 

<p align ="left">
<img src="bloc_timer_2.png" alt="drawing" width="200"/>
<img src="bloc_timer_1.png" alt="drawing" width="200"/>
<img src="timer_flow.png" alt="drawing" width="200"/>

</p>



