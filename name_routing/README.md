# name_routing

 Name Routing using Get x
 
 return GetMaterialApp(
 
      debugShowCheckedModeBanner: false,
      title: "Name Navigation",
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(
            name: '/next_screen/:somevalue',
            page: () => NextScreen(),
            transition: Transition.leftToRight),
      ],
      //when we are navigating to route which does't exist.
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => Unknown(),
      ),
      
      
                 // Get.toNamed('/home');

                  // Go to home screen but no option to return to previous screen
                  // Get.offNamed('/home');

                  // Go to the home Screen and remove all the previous screen
                  // Get.offAllNamed('/home');

                  //<----Dynamic URL Link ---->
                  //Here we are Na we do in web base applicationvigating to Home screen and navigating we can pass parameter as well as
                  //Here we are passing 2 parameter channel & content
                  Get.toNamed(
                      '/home?channel=Anand Magar&content=Flutter Get x');
      
      
      
      
      
