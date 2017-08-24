# Pre-work - *Tip Calculator*

**Tip Calculator** is a tip calculator application for iOS.

Submitted by: **Murtza Manzur**

Time spent: **4** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Updated the UI color scheme

## Video Walkthrough 

Here's a walkthrough of the implemented user stories:

<img src='http://imgur.com/aHEnG1g.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [Imgur](https://imgur.com).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** 
- Apple provides a great set of tools with Xcode and the core iOS frameworks, which let developers both easily and quickly build apps. One of the best parts of this experience is the inline debugging and suggested solutions that Xcode provides. 
- Outlets allow you to change the properties of a UI element. Actions listen for an event and trigger a specific function when that event happens. 
- A Storyboard is implemented as a XIB file. This file is formatted as XML and it tracks elements and their properties created through the Interface Builder. This information includes properties such as unique id, UI position, height, and width. By giving us a unique id, we have a reference to that element. When we set up an Outlet in the code, we can now programmatically update an IB element because we have a reference to it. The same is true for an Action, where we set up a listener on an IB element and bind a function to it that gets notified when an event occurs. 

**Question 2**: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**
- A strong reference cycle for closures is when a class instance and a closure are keeping each other alive by maintaining strong references to each other. This means neither the class instance nor the closure will ever get deallocated from memory. 

## License

    Copyright 2017 Murtza Manzur

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
