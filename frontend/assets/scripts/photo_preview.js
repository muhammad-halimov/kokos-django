const myInput = document.getElementById("my-input");
function stepper(btn){
    let id = btn.getAttribute("id");
    let min = myInput.getAttribute("min");
    let max = myInput.getAttribute("max");
    let step = myInput.getAttribute("step");
    let val = myInput.getAttribute("value");
    let calcStep = (id == "increment") ? (step*1) : (step * -1);
    let newValue = parseInt(val) + calcStep;

    if(newValue >= min && newValue <= max){
        myInput.setAttribute("value", newValue);
    }
}

const smallImages = document.querySelectorAll('.img_preview');
const bigImage = document.querySelector('.current_photo_wrapper img');

smallImages.forEach(img => {
  img.addEventListener('click', () => {
    if (bigImage) {
      bigImage.src = img.src;
    }
  });
});

if (smallImages.length > 0) {
  bigImage.src = smallImages[0].src;
}
const addToCartButton = document.querySelector('.a_btn');
const sizeRadios = document.querySelectorAll('.size_radio');
const productInfo = {
    name: 'Футболка Кокос Групп 2024',
    price: 3990,
    img: 'assets/img/item1.png'
};

addToCartButton.addEventListener('click', () => {
    const selectedSize = Array.from(sizeRadios).find(radio => radio.checked);
    
    if (!selectedSize) {
        alert('Пожалуйста, выберите размер.');
        return;
    }

    const quantity = Math.max(1, parseInt(myInput.value));
    const size = selectedSize.nextElementSibling.textContent; 

    const cart = JSON.parse(localStorage.getItem('cart')) || [];

    const item = {
        name: productInfo.name,
        price: productInfo.price,
        img: productInfo.img,
        size: size,
        quantity: quantity
    };

    cart.push(item);
    localStorage.setItem('cart', JSON.stringify(cart));
    addToCartButton.style.backgroundColor = '#138220';
    addToCartButton.innerHTML = 'Добавлено в корзину';
    setTimeout(function() {
      addToCartButton.style.backgroundColor = '#821313';
      addToCartButton.innerHTML = `<img src="assets/img/white_cart.svg">В КОРЗИНУ`;
    }, 2000);
});
