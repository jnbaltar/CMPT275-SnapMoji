# CMPT275-SnapMoji

## Project Summary

Capture your emotions with Snapmoji. With our iOS app, SnapMoji, our aim is to help
those with autism that struggle with identifying different emotions. SnapMoji will guide these individuals
develop their emotional comprehension of close friends and family with a database that the user
can create to become more familiar with the people close to them. Studies show that those with
autism have difficulty in identifying emotions in facial expressions, especially emotions that are
similar such as anger and sadness. However, many have developed methods to help those
who struggle with identifying emotions as recognizing facial expressions can be taught.
Using SnapMoji everyday will help train these skills and improve social interactions for the user.
The user can interact with their friends and family by taking multiple pictures of them emulating
different emotions. They can also track their progress by testing their ability to identify the
emotions in the pictures that they have taken. Levels of difficulty will be included such as
identifying emotions or mental states within full or partial photos of the face. If the user cannot
identify the emotion in the picture they have taken SnapMoji will help with the identification and
let the user know what emotion is present in the image. SnapMoji is for anyone that is having
trouble differentiating emotions in facial expressions and want to work toward developing this
skill.

## Splash Page 
The first page that appears when you open the app is a splash page. It includes our logo and five buttons to leading to our main features. Buttons include Information, Main (Friends Section), Test, Statistics and Descriptions. this page is only meant to appear when you initally open the app as all five buttons are also available in the toolbar of all the other pages. 

## Coding Standards
Provided below are the standards that are followed while coding SnapMoji.   

### Identifiers
The identifiers are descriptive enough to minimize the need for comments; however, comments should still be used to explain major functions and classes.  Multi-worded identifiers separate words by the their case, where the first letter of another word is capitalized. 
* variables: variable names start with a lower-case letter and are letter-case separated ie. "twoWords"
* classes: classes start with an upper-case letter and are also letter-case separated ie. "ThreeWords"
* methods: methods follow the same naming convention as variables 
* files: files follow the same naming convention as classes
* segues: segues will be identified with the same letter-case seperation suffixed with _Segue
  * source code will have a header to list the programmers that worked on it, a changelog, and a list of known bugs 
Indents in the code are 4 spaces. 

## How to run Snapmoji
An iPhone 7 or iPhone 8 will be needed to use Snapmoji with the camera. After cloning the repo follow these steps to run Snapmoji: 

1. Configure the bundle identifier (can be anything) and developer team (your team) 
2. Make sure you are connected to WiFi on the device and verify the developer app from the phone's general settings
3. The app should be ready to use, so click run. 
4. If the Microsoft Emotions API is not working when a picture is taken, a new API key can be acquired from the microsoft website: https://azure.microsoft.com/en-us/services/cognitive-services/emotion/
