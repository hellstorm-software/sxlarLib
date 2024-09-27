
// ##############################################################################################################################
//
//
//    a script that will fill a div named "gallery" with every image from the target folder
//
//
// ##############################################################################################################################

// Function to shuffle the array
function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}

// Function to load images into the gallery
function loadImages() {
    const gallery = document.querySelector('.gallery');
    const imageFolder = 'media/png'; 
    const imageList = [
        'image1.jpg',
        'image2.jpg',
        'image3.jpg',
        'image4.jpg',
        'image5.jpg',
        'image6.jpg',
        'image7.jpg',
        'image8.jpg',
        'image9.jpg',
        'image10.jpg',
        'image11.jpg',
        'image12.jpg',
        'image13.jpg',
        'image14.jpg',
        'image15.jpg',
        'image16.jpg',
        'image17.jpg',
        'image18.jpg',
        'image19.jpg',
        'image20.jpg',
        'image21.jpg',
        'image22.jpg',
        'image23.jpg',
        'image24.jpg',
        'image25.jpg', //add every image in target folder
    ];

    // Shuffle images for random display
    const shuffledImages = shuffleArray(imageList);
    shuffledImages.forEach(image => {
        const img = document.createElement('img');
        img.src = imageFolder + image;
        gallery.appendChild(img);
    });
}

// Load images when the page loads
window.onload = function() {
    loadImages();
};
