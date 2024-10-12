// Бургер меню
const menuBtn = document.querySelector('.menu_btn');
const closeBtn = document.querySelector('.close_btn'); 
const menuOverlay = document.querySelector('.menu_overlay');
const menuContainer = document.querySelector('.menu_container');

menuBtn.addEventListener('click', () => {
    document.body.classList.add('menu_open');
});

closeBtn.addEventListener('click', () => { 
    document.body.classList.remove('menu_open');
});

menuOverlay.addEventListener('click', () => {
    document.body.classList.remove('menu_open');
});
