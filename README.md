# real_time_coffee_app

**Notes**

```
In adding firebase sdk there is a  difference between the project level build.gradle and the app level
build.gradle.

This is where we initialize our flutter applications.

In both and when i am importing third party packages i have to open the android folder.


(a)(<project>/build.gradle)

(b)App-level build.gradle (<project>/<app-module>/build.gradle)

We also must put some dependencies  from within flutter after importing external packages so as to make it easier for our app to communicate with firebase.

packages
firebase_auth: ^0.18.0+1
cloud_firestore: ^0.14.0+2

```

**Planning the Application**

```
(a)The Live Data is from firestore.And we shall be using Firebase Authentication.Two main aspects of focus in this application.

(b)stles and stful are the shortcuts for autogenerating the stateful and stateless widgets automatically.

```

**Beginning the Application**

```
(a)We have to enable the various sign in methods via firebase cloud (eg email and password, anonymous)that we want to use in our app

(b)Any function that is asynchronous has to be preceeded with a FUTURE as its type.It is good practice for firebase functions and variables to have in types.

When we have a variable with the type dynamic it means that it can be able to hold more than one datatype.

Remember that flutter is strict.

```

**STREAMS**

```
Fireabase constantly communicates with my application when there is a successful sign in  by emitting a user object
back or null in the case that the user has logged  off/our is usuccessfult.

Our flutter application  therefore can be able to listen to these Auth Changes and thus we can make a decision to redirect
to the home page if the user has succesffully signed in.

Flutter streams can be able to detect authentication changes in the application.Everytime there is a successful login flutter returns a
user object and incase there is an usuccessful login it returns a null.

We can be able to listen for this AUTH Changes.


```

**Flutter Provider**

```
(a)It is the google recommended package for state management in flutter.



```

**VS CODE FLUTTER SHOTCUTS**

```
(a) F5 does a hot reload of the application.


```

**Developed by**

```
Mbugua Caleb

```
