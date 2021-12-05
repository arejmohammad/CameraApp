# Momenets App
Those special and magical Moments in your life's story.. don't miss it,capture it!

# For:
[LolaHadi](https://github.com/LolaHadi) - [ArejMohammad](https://github.com/arejmohammad)

# What we're talking about?

Moments App allows you to capture, and save your special life's Moments! The Moments that means to you.

# Let's Dive into it, and see how it works..

Moments is developed by Swift 5.x and xCode 13.0, programmatically with code only without using Storyboard or drag and drop..

## Signup and Login
https://user-images.githubusercontent.com/92252764/144732751-63e1d759-f013-415c-837b-f46ceb68052f.mov


## Capture Moments
You have two ways to add a moment, by Camera or by importing from Photos.
![Take moment using Camera](https://ibb.co/KL8twP9)
![Import moment from Photos](https://ibb.co/KzRrr81)

# Design
## UIViewStack
We have used `UIViewStack` on the construction and design of the entire application, which makes each element takes its rightful place.
`UIStackViews` can dynamically adapt to the screen size, and any changes in the available space. `UIStackViews` manages the layout of all the views in its arrangedSubviews property. These views are arranged along the stack view’s axis. We have used both `.Verticall` and .`Horizintal` The exact layout varies depending on the stack view’s axis, distribution, alignment, spacing, and other properties.

## View.frame.width and height
`let width = view.frame.width`
`let height = view.frame.height`

## incrementYPoint
width is normally fixed in the screen starts from 0 and ending in screen.width, but what about height?
we implement a y point which increments by element height each time. and the next element starts from it. We can control the spacing between elements by adding the spacing value to the y point. 

`var incrementYPoint = 0.0
let titleL = UILabel()

titleL.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/10)
incrementYPoint += titleL.frame.height
incrementYPoint += 100`

# Error Handling and User Friendly
We all make mistakes.. Moments instead of its easy use and its simplicity, it takes user step by step during the experience. We used `UIAlertController` to do this.

# What's Next?
If we had more time, we would do the following:
- Add a collectionView to collect and manage all user moments.
- Add more options on user moments such as: add description text, place, and time. And allow users to share moments on social media.
- working with core data instead of userdefaults and fixing the slow in the app.
- Change the name of the application from CameraApp to Moments.
