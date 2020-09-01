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




```

**Developed by**

```
Mbugua Caleb

```
