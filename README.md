# Gear 360 File Access from Android phones
Samsung Gear 360 (2017 version) File Access from Android phones - works on even Android 11

![gear360icon](https://user-images.githubusercontent.com/51407106/124274349-d35b3e80-db49-11eb-94de-05a27930ed1d.png)

**This project consists of 2 parts:**
1. Software mod on Samsung Gear 360 (installing provided files on SD card)
2. Android application from Google Play

## Aim of this project

Samsung stopped supporting their great 360 degree camera Gear 360. And the official Samsung Android app for accessing files on the camwera from the phone is not working on Android 11 or later because of the storage permission requirements on Android 11.
The official application still works for remote controlling the Gear 3460 camera, but as soon as we try to access the images or videos on camera the app crashes.

With this mod, I provide a solution to access camera images and videos. The http server on camera (**part 1**) will serve the files on OSC (Streetview mode)
And the android application will access the files, copy them to the phone. (**part 2**)

Application also stitches the images and videos to photosphere (360 panorama) format on user request (STITCH function)
After the stitch operation, metadata for identification of the files as 360 degree panorama is also injected to the jpg and mp4 files.

All images & videos copied from the camera are copied and saved on the phone's external storage Gear360 folder.
If stitching function is used, the stitched files are also saved on the same folder.

Video stitching takes a long time. I will work on making it faster if I can find a better method.

### Important !

This application is tested on Gear 360 2017 version. It does not work on previous versions of Gear 360.
On Gear 360 2017, latest firmware is recommended because of Streetview requirement.

## Installation

see instructional video here: https://www.youtube.com/watch?v=yrW8DOIQsS0

### Part 1

Please clone this repository or download the .zip file of it. (If you're on GitHub, click the green "Clone or download" button on the right, and then "Download ZIP".)
Copy the contents of the SD-card-root folder to the root of the SD card you're using with your Gear 360 camera (2017).

Your SD card should now look like this:

    SD card root
    |-- DCIM
    |-- SYSTEM
    |-- info.tg
    |-- nx_cs.adj
    |-- mod.sh
    `-- mods
        |-- www
        |   |-- cgi-bin
        |   |    |-- files
        |   |    `-- gallery
        |   |-- index.html
        |   `-- top.html
        |-- jhead
        `-- httpd
            
    
    
DCIM and SYSTEM were put there by the camera. Everything else is the contents of the SD-card-root folder from this repository.
Put your SD card back in your Gear 360 camera (2017). And power it on.
After a few seconds you should see the front led of the camera blink (green-orange) for 2 seconds.
This confirms that the http server is running on camera.

#### important:
if you want to use the BT mode occasionally, please try the version 2 of the folder. (SD-card-root-V2)
this version does not start the httpd server automatically when powered-on.
instead, user has to Double-click the [Power] button on the camera. Then user should see a top light cycle green-orange-green to indicate it's working.
this is for users who still want to use the BT mode when required. Because if httpd server is running , BT mode does not work. 

### Part 2

Please install the Android application from Google Play. Name of the app is "Gear 360 File Access & Stitcher"
Dİrect URL to Google Play will be provided later here:
https://play.google.com/store/apps/details?id=com.aktuna.gear.gear360fileaccess

## Running the application and connecting

1. Launch the app on your Android phone
2. Please put the Gear 360 camera in OSC (Streetview mode)
3. You have to long press Bluetooth button on the side of the camera. When you see "Connect to..." on the display, please click the Bluetooth button a few times until you see "Connect to Streer View"
4. Please click start (record/shutter) button to select the mode
5. Now you will see "Gear 360(XXXX) and a 8 digit wifi SSID on the display
6. Go to wifi settings on your phone and select the SSID starting with "Gear 360"
7. When asked for wifi password , enter the 8 digit code from step 5.
8. You will hear a sound from camera confirming that the phone is connected.
9. Now on the android application you should see connection is active. (Gear 360 Connected" indication)

The upper scrolling window will display files on camera. Lower scrolling window will show files that are downloaded from the camera to the storage of your phone (Gear260 folder)
File name, size and creation date are also displayed.
You can download images from the camera to your phone or delete images on the camera. 
You can stitch 360 degree images or videos on your phone , and also you can delete files on your phone.

I hope this helps anyone with a Gear 360 camera and Android phone on which the official Samsung application does not work.

Please feel free to reach me if you have any issues with the project, or you have an idea to improve the application.

## TODO

1. Faster video processing ?
2. Injecting GPS location collected from phone (option)

## Credits

First part of the application is based on :

@vitorio's project:
https://github.com/vitorio/gear360-2017-mods

@ottokiksmaler's information:
https://github.com/ottokiksmaler/gear360_modding
Inspired by @mewlips' other Samsung camera mods:

https://mewlips.github.io/nx-remote-controller-mod/
