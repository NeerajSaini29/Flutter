
Row:-- It is the widget in which all the element present in the horizontaly
Basic structure of Row widget
Row(
    children: [
        widget1,
        widget2,
        widget3
    ],
)

Column:-- It is the widget in which all the children element present in the vertically.
Column(
    children: [
        widget1,
        widget2,
        widget3
    ],
)

Expanded:-- this widget enforce the element of the row to acquire the available space horizontaly for the row and vertically for the column . 

ImageAsset:-- we can show image via ImageAsset or Image.network

Image.network(
    'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
    width: 250,
)

The other way for to show the image is following

AssetImage assetImage = AssetImage('images/flight.jpg');
Image image = Image(
    image: assetImage,
    width: 250.0,
    height: 200.0,
);

Raised Button:-- It is widget of button type

Alert Dialog:-- it is popup which contain the title and the content. You can use 

Simple List View:-- If we have small content to show in the list then we can use

Custom ListView:--

Floating Action Button:--

SnackBar:--

Note:-- if we do any change in pubspec.yaml file. then we need to get dependenices once. 


