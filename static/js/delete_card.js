const deleteButtons = document.querySelectorAll('.order_date button img[src="/static/img/icons/delete.png"]');
deleteButtons.forEach(button => {
    button.addEventListener('click', () => {
      const orderCartProfile = button.closest('.order_cart_profile');
      orderCartProfile.remove();
    });
  });
  