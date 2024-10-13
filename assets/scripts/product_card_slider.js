const productCards = document.querySelectorAll('.product_img_wrapper');

productCards.forEach((productCard, index) => {
  const productImages = productCard.querySelector('.product_img');
  const images = productImages.querySelectorAll('img');
  let currentIndex = 0;

  productCard.addEventListener('mousemove', (e) => {
    const rect = productCard.getBoundingClientRect();
    const x = e.clientX - rect.left;
    const numImages = images.length;
    const imageWidth = rect.width / numImages;

    currentIndex = Math.floor(x / imageWidth);
    productImages.style.transform = `translateX(-${currentIndex * 100}%)`;
  });

  productCard.addEventListener('mouseleave', () => {
    currentIndex = 0;
    productImages.style.transform = 'translateX(0)';
  });
});
