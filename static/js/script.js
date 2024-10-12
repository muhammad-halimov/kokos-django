// Последние 4 новости выводятся на фон
const blocks = document.querySelectorAll('.one_news');
const sections = document.querySelectorAll('.section');
const introImg = document.getElementById('introImg');

let currentIndex = 0;
let interval;
let isClicked = false;

function updateIntroImg() {
  const images = Array.from(blocks).map(block => block.querySelector('img').src);
  introImg.src = images[currentIndex];
  introImg.classList.add('fade-out');

  setTimeout(() => {
    introImg.classList.remove('fade-out');
    introImg.classList.add('fade-in');
    sections.forEach((section, index) => {
      section.style.backgroundColor = index === currentIndex ? '#600E0E' : 'transparent';
    });
    currentIndex = (currentIndex + 1) % blocks.length;

    setTimeout(() => {
      introImg.classList.remove('fade-in');
    }, 500);
  }, 500);
}

function resetInterval() {
  clearInterval(interval);
  interval = setInterval(updateIntroImg, isClicked ? 8000 : 7000);
}

blocks.forEach((block, index) => {
  block.addEventListener('click', () => {
    introImg.classList.add('fade-out');

    setTimeout(() => {
      introImg.src = block.querySelector('img').src;
      introImg.classList.remove('fade-out');
      introImg.classList.add('fade-in');
      sections.forEach((section, i) => {
        section.style.backgroundColor = i === index ? '#600E0E' : 'transparent';
      });
      currentIndex = index;
      isClicked = true;
      resetInterval();

      setTimeout(() => {
        introImg.classList.remove('fade-in');
      }, 500);
    }, 500);
  });
});

interval = setInterval(updateIntroImg, 7000);
updateIntroImg();
