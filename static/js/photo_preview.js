const smallImages = document.querySelectorAll('.img_preview');
const bigImage = document.querySelector('.current_photo_wrapper img');

smallImages.forEach(img => {
  img.addEventListener('click', () => {
    bigImage.src = img.src;
  });
});

bigImage.src = smallImages[0].src;