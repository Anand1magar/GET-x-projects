# route_navigation

  onPressed: () async {
                  Get.to(
                    Home(),
                    //This Get.to() method have  attribute such as

                    // makes second screen screen as Dialog
                    fullscreenDialog: true,

                    //To Provide transition animation
                    transition: Transition.zoom,

                    //Duration for Transition
                    duration: Duration(milliseconds: 2000),

                    //Curve Animation
                    curve: Curves.bounceInOut,

                    //Go to the next screen with some data
                    arguments: "Data form main",
                  );
                  var data = await Get.to(Home());
                  print("Received the data $data");
                },
                )}
                
                
     #Getting back 
       onPressed: () {
                // Get.back();
                //Send back to the previous screen must use result as name
                Get.back(result: "This is form home screen");
              },
