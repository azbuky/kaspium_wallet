## 0.1.7

* Modify the README.md

## 0.1.6

* Add the `persistMessage` option to the `startHce` function (with a default value of true).
* Delete the internal storage file when executing the `stopNfcHce` function.
* Even if the `stopNfcHce` function is not executed and the app is closed, NFC HCE continues to operate. 
  In this case, when you run `startNfcHce` after a device reboot, it reads the NDEF message from the internal storage file and initializes the message.

## 0.1.5

* Refactor the source code and function names.
* Add a default argument 'mimeType' to the 'startNfcHce()' function.
* Add 'stopNfcHce' API.
* Write the initial NFC HCE NDEF message to internal storage and, upon app restart, read and initialize it from the file.

## 0.1.4

* Support operation in both foreground and background, 
* but specifically enable NFC card reader access even when the device screen is fully locked on Android 12 and higher.
* add isSupportSecureNfcSupported api

## 0.1.3

* modify the readme 

## 0.1.2

* readme - screenshot add

## 0.1.1

* modify example code 

## 0.1.0

* add README.md 

## 0.0.9

* initial release.
