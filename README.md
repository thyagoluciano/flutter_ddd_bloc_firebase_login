## Setup Firebase project

To create a new Firebase project you will need to go [here](https://console.firebase.google.com).

1. Click on “***Add project***” to create a new project.

![](https://cdn-images-1.medium.com/max/2158/1*OdkcPjoktutZQVKShV2owQ.png)

**2.** Now, you have to enter a “***Project name***” and check the two checkboxes below. Then, click on “***Create project***”.

![](https://cdn-images-1.medium.com/max/2000/1*QRs5KwGQI1KN51mwq8hBAw.png)

**3.** Now, wait for the creation to complete and click on “***Continue***”.

![](https://cdn-images-1.medium.com/max/2000/1*4zQItwTcBQKyWGeBM84Bwg.png)

**4.** This will lead you to the “***Project Overview***”. From here you will be able to add **Firebase** to your **Flutter** project.

![](https://cdn-images-1.medium.com/max/2158/1*XO49PoKRvZbw_030W3Rv5A.png)

## Android setup

First, we will set up Firebase for the Android side.

1. Click on the **Android icon**.

1. In this form, you have to first enter the “***Android Package name***”. You can get the android package name form your **project directory** → **android** → **app** → **src** → **AndroidManifest.xml**. On the second line, there will be your package name. Just copy & paste in the form.

1. Then you have to enter an “***App nickname***” which is optional (if you do not enter then an auto-generated app name would be used).

![](https://cdn-images-1.medium.com/max/2158/1*WI0NRLns3nD5YMHfe92Nsg.png)

4. Now, you have to enter the “***SHA-1 hash***”. Just hover over the help (?) and click on ***See this page***. This will take you to “***Authenticating Your Client***” page.

![](https://cdn-images-1.medium.com/max/2158/1*JOtKnV4oP9JpHa5YrXWvZg.png)

From here you will get the command to generate the SHA-1 hash. Paste this in your ***IDE terminal*** to get the SHA-1 hash. Just copy & paste this in the form.

5. Click on ***Register App***.

![](https://cdn-images-1.medium.com/max/2158/1*rfKXvpLIXNNRjxv3VMDpyg.png)

6. This will take you to the second step from where you can download the “***google-services.json***” file and just drag & drop it in your **project directory** → **android → app**. Then, click on **Next**.

![](https://cdn-images-1.medium.com/max/2158/1*KMBk8yQHY85JiAlhfaeXKQ.png)

7. In the third step just follow the instructions add the ***code snippets*** accordingly in the desired position. Then, click on** Next**.

![](https://cdn-images-1.medium.com/max/2158/1*pplCKi-x3SlPg7y0Uyelng.png)

8. Finally, to complete the fourth step just **run the app** on your device and **attempt a google sign in** from the device for the first time.
> *Make sure that the internet connection of the device is turned on*.

![](https://cdn-images-1.medium.com/max/2158/1*dxW3htcVjSe4oEu_WXqKZA.png)

9. After completing this step, you will see that the “***Continue to Console***” button gets enabled and click on it to go to the console of the app.

![](https://cdn-images-1.medium.com/max/2158/1*0Jvp071Eei-rq3KzfrKrVA.png)
> # But you will find that the app has paused and you will see in your IDE that an **Exception** has occurred. Don’t worry this exception occurred because we have not enabled Google as a sign-in provider in our Firebase console.

![](https://cdn-images-1.medium.com/max/2216/1*Yisx_5tCPNkNttjnNO4x6w.png)

Let’s fix this issue.

1. Go to **Authentication Page** → **Users** tab and click on “***Set up sign-in method***”.

![](https://cdn-images-1.medium.com/max/2952/1*zYKM8uevDF7Zo6OoikaJNQ.png)

2. In the “***sign-in providers***” page, edit ***Google*** sign-in.

3. Here, you have to enter the **project name** and **support email**. And “***Enable***” this by clicking the toggle on the top-right corner. Then, click on **Save**.

![](https://cdn-images-1.medium.com/max/2520/1*OZ3iV8HZtcjvidhdTz5Fpg.png)

4. So, now the google sign in setup is complete. Run the app on the device again.
> # But to your surprise, you will again see that the same Exception occurs. Now, this gets interesting, this occurs because you have not filled up the OAuth consent form. This is the new change in Firebase that I was talking about from the beginning and it is just driving developers crazy because I have not found them properly documented anywhere.

Let’s see how to fix this issue.

1. First of all, go to this page [***here](https://console.developers.google.com/apis/credentials/consent)***.

1. Make sure you are signed in with the **same account** with which you have created the **Firebase project**.

1. Also, make sure that on the top-left corner, your project is selected for which you are filling this consent.

![](https://cdn-images-1.medium.com/max/2416/1*kocIXf7WOyXevCZBPSFIUg.png)

4. Go to ***Credentials → OAuth consent screen ***tab and start filling the form.

5. Enter “***Application name***”, “***Application logo***” & “***Support email***”.
> In the **Application Logo**, you can just enter any image if you are not making this for **production**, otherwise, enter the real **app icon** that you are using for your application.

![](https://cdn-images-1.medium.com/max/2416/1*RRwNUpgo6FEHGbPk25b4sA.png)

6. Then, scroll down and fill the “***Application Homepage link***”, “***Application Privacy Policy link***” and “***Application Terms of Services link***”.

In all these places, you have to enter the same link starting with http:// then your app domain name which I have marked with ***green*** below.

![](https://cdn-images-1.medium.com/max/2416/1*m3l7TtDq0ymLdGGKtdticA.png)

7. Click on ***Save***.
> So, this completes the whole setup process for “***Sign in with Google***” using ***Firebase ***for*** Android***. Now, again run the app on your device and attempt google sign in. You will find that it suddenly started working without any exception.
> # Note: You should follow all the above steps properly without skipping any of them to get a functional Firebase app.

## iOS setup
> If you have skipped the Android setup and arrived directly at the iOS setup, then make sure that you check out how to fill the **consent form** above otherwise you might face some error later.

1. Go to **Settings → General **tab.

![](https://cdn-images-1.medium.com/max/2520/1*2gOty6YzAh1cMnA90EYqgg.png)

2. Scroll down and click on “**Add app**”.

![](https://cdn-images-1.medium.com/max/2520/1*1RlGAqJ8CgubtOTxzOpvhg.png)

3. Now, select ***iOS***.

![](https://cdn-images-1.medium.com/max/2520/1*cqcTXJLVx0eyovZ6a7cQuA.png)

4. Enter the** iOS bundle ID** and **App nickname**. Then, click on **Register app**.

![](https://cdn-images-1.medium.com/max/2520/1*f8f1Lp4dQl6Z1t9_yLd3CA.png)

You can get the Bundle ID inside **ios** → **Runner.xcodeproj → project.pbxproj **by searching for “***PRODUCT_BUNDLE_IDENTIFIER***” using Ctrl + F.

![](https://cdn-images-1.medium.com/max/2780/1*ctzAv7_XhoVYs6V_f_cNLg.png)

5. In the second step, you have to download the **GoogleService-Info.plist **file.

![](https://cdn-images-1.medium.com/max/2520/1*I0KzaW5sGZtp4sEp3xiHDw.png)

6. Open the **ios** folder of the project directory in **Xcode** by right-clicking and selecting “***Open in Xcode***”.

![](https://cdn-images-1.medium.com/max/2460/1*7CHpQ1rTrM8-TDqnYjdfbw.png)

7. Now, drag & drop the file that you downloaded in the **Runner **subfolder. A dialog box would appear, make sure in “*Add to targets*” **Runner **is selected and click on **Finish**.

![](https://cdn-images-1.medium.com/max/2460/1*CH76lzqAfr43edHcKZtbNA.png)

8. Close **Xcode**. Then, in your **IDE **go to **ios → Runner → Info.plist**. Here, you have to add something.

Open this [***google_sign_in](https://pub.dev/packages/google_sign_in#ios-integration)*** flutter package page. Inside **iOS integration **you will find a code snippet. Just copy & paste it inside the **Info.plist **file and save it, like this:

![](https://cdn-images-1.medium.com/max/2832/1*1_menDkOwk3XGt3oZJ9ZqA.png)

9. Here, you will see that there is a **TODO **written to replace the value within the ***string*** tag with “***REVERSED_CLIENT_ID***”. You will find the ***REVERSED_CLIENT_ID*** in the file “***GoogleService-Info.plist***”.

![](https://cdn-images-1.medium.com/max/2832/1*PXpuYI_9-lQ7eT4tHYMIvw.png)

10. Go to the third step, ***you do not need to follow this step*** because we are using the Flutter Firebase plugin which takes care of all these things. You will only need to do this step if you are building a standalone iOS app. Click on ***Next***.

![](https://cdn-images-1.medium.com/max/2520/1*nQKMwJshGsA-MvqEJOW9aQ.png)

11. In the fourth step also you do not need to follow anything. Just click on ***Next***.

![](https://cdn-images-1.medium.com/max/2520/1*wHCQFYa2Abk-8QdYaJCKbg.png)

12. Now, run the app on your **iOS** device and attempt a ***google sign in*** to complete the fifth step.

![](https://cdn-images-1.medium.com/max/2520/1*ynt_zbRKiy9cZHRQdY8wnw.png)

13. After completing this step, click on “***Continue to console***”.

![](https://cdn-images-1.medium.com/max/2520/1*GjPeVKd3jJQNb92hsgvyLg.png)
> # So finally, this completes the whole setup process for “***Sign in with Google***” using ***Firebase ***for*** both Android and iOS***. Just follow these above steps properly and you should get past the setup pretty quickly.
