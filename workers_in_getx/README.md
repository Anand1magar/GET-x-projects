# workers_in_getx

A new Flutter project.

## Lerning Workers in GetX

 //call evertime when the value of  count variable change
    ever(count, (_) => print(count));

    //called everytime when the value of the any variable from the list changes
    // everAll([count], (_) => print(count));

    //Called only one when the variable value will change
    once(count, (_) => print(count));

    //called everytime when user stop typing for 1 second
    debounce(
      count,
      (_) => print(
          "When user stop typing for one second the value of variable will print"),
      time: Duration(seconds: 1),
    );



samples, guidance on mobile development, and a full API reference.
