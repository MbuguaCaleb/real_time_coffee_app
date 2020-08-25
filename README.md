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

firebase_auth: ^0.18.0+1
cloud_firestore: ^0.14.0+2

```

**Developed by**

```
Mbugua Caleb

```
