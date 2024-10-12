const tabs = document.querySelectorAll('.tab');
const pastMatches = document.querySelector('.past-matches');
const upcomingMatches = document.querySelector('.upcoming-matches');
const yearSelect = document.getElementById('postsFilterYear');

// Обработчик событий для вкладок
tabs.forEach((tab, index) => {
  tab.addEventListener('click', () => handleTabClick(index));
});

// Обработчик события на селекте года
yearSelect.addEventListener('change', () => {
  currentYear = parseInt(yearSelect.value);
  calculateMonths();
  handleTabClick(tabs.length - 1);
});

// Функция, которая выполняется при клике на таб или изменении селекта года
function handleTabClick(index) {
  tabs.forEach(t => t.classList.remove('active'));
  tabs[index].classList.add('active');

  pastMatches.classList.remove('active');
  upcomingMatches.classList.remove('active');

  if (index === 0) {
    upcomingMatches.classList.add('active');
    upcomingMatches.innerHTML = '';
    for (const month of upcomingMonths) {
      upcomingMatches.innerHTML += `<p class="heading">${month} ${currentYear}</p><div id="${month.toLowerCase()}_${currentYear}"></div>`;
    }
  } else {
    pastMatches.classList.add('active');
    pastMatches.innerHTML = '';
    for (const month of pastMonths) {
      pastMatches.innerHTML += `<p class="heading">${month} ${currentYear}</p><div id="${month.toLowerCase()}_${currentYear}"></div>`;
    }
  }
}

// Функция, которая рассчитывает предстоящие и прошедшие месяцы на основе выбранного года
function calculateMonths() {
  const currentDate = new Date();
  const currentMonth = currentDate.getMonth() + 1;
  const monthNames = [
    'Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь',
    'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'
  ];

  upcomingMonths = [];
  pastMonths = [];

  // Рассчитываем предстоящие месяцы
  for (let i = currentMonth; i <= 12; i++) {
    upcomingMonths.push(monthNames[i - 1]);
  }

  // Рассчитываем прошедшие месяцы
  for (let i = currentMonth - 1; i >= 0; i--) {
    pastMonths.push(monthNames[i]);
  }

  // Если выбранный год больше текущего года, все месяцы считаются предстоящими
  if (currentYear > new Date().getFullYear()) {
    upcomingMonths = monthNames.slice();
    pastMonths = [];
  }
  // Если выбранный год меньше текущего года, все месяцы считаются прошедшими
  else if (currentYear < new Date().getFullYear()) {
    pastMonths = monthNames.slice();
    upcomingMonths = [];
  }
}

let currentDate = new Date();
let currentMonth = currentDate.getMonth() + 1;
let currentYear = currentDate.getFullYear();

// Вызываем функцию calculateMonths, чтобы инициализировать месяцы
calculateMonths();

// Вызываем функцию handleTabClick, чтобы инициализировать страницу
handleTabClick(0);
