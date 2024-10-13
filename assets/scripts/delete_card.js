const deleteButtons = document.querySelectorAll('.order_date button img[src="assets/img/delete.png"]');
deleteButtons.forEach(button => {
    button.addEventListener('click', () => {
      const orderCartProfile = button.closest('.order_cart_profile');
      orderCartProfile.remove();
    });
  });
  