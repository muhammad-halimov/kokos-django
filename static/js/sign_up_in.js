
/* слайд шоу в авторизации */
const imgBlocks = document.querySelectorAll('.img_block img');
let curIndexAuthorizImg = 0;

function changeImage() {
  imgBlocks.forEach((img, index) => {
    img.style.display = 'none';
  });
  curIndexAuthorizImg = (curIndexAuthorizImg + 1) % imgBlocks.length;
  imgBlocks[curIndexAuthorizImg].style.display = 'block';
}

setInterval(changeImage, 10000);

let pass1 = document.getElementById('id_password1');
let pass2 = document.getElementById('id_password2');

pass1['placeholder'] = 'Ваш пароль';
pass2['placeholder'] = 'Ваш пароль';