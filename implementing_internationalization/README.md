# implementing_internationalization

A new Flutter project.

## Getting Started

  return GetMaterialApp(
      translations: Message(),
      locale: Locale('en', 'US'),
      //Defalut locale //To get the device locale Get.deviceLocale()
      fallbackLocale: Locale('en', 'US'),
      //fallback locale if wrong locale found


