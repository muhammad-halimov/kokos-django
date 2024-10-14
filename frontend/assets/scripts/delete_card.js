function displayCartItems() {
  const cartItems = JSON.parse(localStorage.getItem('cart')) || [];
  const cartContainer = document.querySelector('.one_competition_media_section');
  const orderButton = document.querySelector('.a_btn');
  cartContainer.innerHTML = '';

  if (cartItems.length === 0) {
      const emptyMessage = `
          <div class="no_media">
              <dotlottie-player src="https://lottie.host/8476df42-7ef8-48b2-893f-c03f70f2d29a/ojpfNf37L1.json" background="transparent" speed="1" style="width: 150px; height: 150px;" load="lazy" loop autoplay></dotlottie-player>
              <p>В корзине пока пусто...</p>
          </div>
      `;
      cartContainer.innerHTML = emptyMessage;
      orderButton.style.display = 'none';
      return;
  }

  cartItems.forEach((item, index) => {
      const itemDiv = document.createElement('div');
      itemDiv.classList.add('order_cart_profile');
      itemDiv.innerHTML = `
          <div class="row">
              <div class="col-md-3">
                  <div class="item_img_wrapper">
                      <img src="${item.img}" class="item_img">
                  </div>
              </div>
              <div class="col-md-9 order_item_name">
                  <div class="item_info">
                      <p>${item.name}</p>
                      <p class="price">${item.price} ₽</p>
                      <p>Размер: ${item.size}</p>
                      <div class="input_number">
                          <button id="decrement" type="button"> - </button>
                          <input type="number" class="my-input" min="1" max="100" step="1" value="${item.quantity}">
                          <button id="increment" type="button"> + </button>
                      </div>
                  </div>
                  <div class="order_date">
                      <button class="deleteBtn">
                          <img src="assets/img/delete.png" width="25px">
                      </button>
                  </div>
              </div>
          </div>
      `;
      cartContainer.appendChild(itemDiv);

      itemDiv.querySelector('.deleteBtn img').addEventListener('click', () => {
          cartItems.splice(index, 1);
          localStorage.setItem('cart', JSON.stringify(cartItems));
          displayCartItems();
      });

      const input = itemDiv.querySelector('.my-input');
      itemDiv.querySelector('#increment').addEventListener('click', () => {
          let newValue = parseInt(input.value) + 1;
          if (newValue <= parseInt(input.max)) {
              input.value = newValue;
              updateQuantity(index, newValue);
          }
      });

      itemDiv.querySelector('#decrement').addEventListener('click', () => {
          let newValue = parseInt(input.value) - 1;
          if (newValue >= parseInt(input.min)) {
              input.value = newValue;
              updateQuantity(index, newValue);
          }
      });

      input.addEventListener('change', () => {
          let newValue = parseInt(input.value);
          if (newValue >= parseInt(input.min) && newValue <= parseInt(input.max)) {
              updateQuantity(index, newValue);
          } else {
              input.value = item.quantity;
          }
      });
  });

  orderButton.style.display = 'block';
}

function updateQuantity(index, quantity) {
  const cartItems = JSON.parse(localStorage.getItem('cart'));
  cartItems[index].quantity = quantity;
  localStorage.setItem('cart', JSON.stringify(cartItems));
}

displayCartItems();
