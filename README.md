<h1>What does this repo contain</h1>
<p>Code and research code (stuff I didn't write) for the making of Videbooth, in both a OSX (Mac application) and iOS (iPhone) capacity.</p>
<p>I ended up starting coding with the iPhone app, thinking that its functionality could translate well into OSX, but I was slightly mistaken. They are similar, but the syntax and functions necessary to run a Mac app are slightly different, and that's why I've had difficulty, particularly with the video function of the Mac application.
iosmobile and macos are the (almost) finished versions of Video Booth. The other folders in these repo contain sample code for various functions: </p>
<ul>
<li>avfoundationtest, avcapture.playground -> using AVFoundation library to access and capture video from webcam</li>
<li>videobooth-videopage -> first attempt at accessing webcam for Mac application</li>
<li>VideoPlayRecord-Final -> code to record and play video from camera for iPhone application</li>
<li>Documentation -> user flow and design writeups/presentations from Erick, images for buttons, etc.</li>
</ul>

<h1>iOS Application (iosmobile)</h1>
<h2>What's been done</h2>
- When opened, shows LRC logo
- Asks user to agree to participation agreement 
- Asks user to enter full name and email to confirm agreement
- Brings user to video recording page
- If "RECORD" is clicked, it opens up camera app, asks for permissions, and allows for users to record
- Can re-record if user wants

<h2>What needs to be done</h2>
- Add text for participation agreement
- Add signature field to confirm agreement page
- Add validation functions to make sure valid name and email are added in confirm page
- Get rid of "STOP" button (already included in built-in iPhone camera app)
- Display finished video
- Send to server (backend functionality)
- Rework UI to match Erick's designs (i.e. color, fonts, button images)

<h1>OSX Application (macos)</h1>
<h2>What's been done</h2>
- When opened, shows LRC logo
- Asks user for their name, email, and checkbox to show they agree to the participation agreement
- Brings user to video recording page
- If "RECORD" is clicked, accesses web camera and displays live feed to page

<What needs to be done</h2>
- Make application open full screen
- Add signature area (?)
- Add validation functions to make sure valid name, email, and checked value are added in confirm page (I thought I made these but they may be in another folder in this repo)
- Add record functionality (camera can open, but it doesn't capture anything)
- Get rid if "STOP" button (should already be built-in with OSX camera application)
- Rework UI to match Erick's designs (i.e. color, fonts, button images)
