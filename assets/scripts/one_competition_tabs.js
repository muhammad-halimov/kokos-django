const tabs = document.querySelectorAll('.tab');
const tabContents = document.querySelectorAll('.tickets, .stream, .team_composition, .statistics, .media');

tabs.forEach((tab, index) => {
    tab.addEventListener('click', () => {
        tabs.forEach(t => t.classList.remove('active'));
        tab.classList.add('active');

        tabContents.forEach(content => content.classList.remove('active'));
        tabContents[index].classList.add('active');
    });
});

// Получаем необходимые элементы
const addPrsnBtn = document.querySelector('.add_person_btn');
const addPrsnBlock = document.querySelector('.adding_person_bock');
const nextBtn = document.querySelector('.next_btn');

// Отслеживаем клик на кнопку "Добавить болельщика"
addPrsnBtn.addEventListener('click', addPersonField);

// Функция для добавления нового поля
function addPersonField() {
    addPrsnBlock.style.display="block";
  // Получаем все поля ввода имени и фамилии
  const nameInputs = document.querySelectorAll('#name_surname');

  // Проверяем, что последнее поле не пустое
  if (nameInputs.length > 0 && nameInputs[nameInputs.length - 1].value.trim() === '') {
    // Если поле пустое, выводим ошибку
    const errorMessage = document.createElement('p');
    errorMessage.classList.add('error');
    errorMessage.textContent = 'Нельзя';
    addPrsnBlock.appendChild(errorMessage);
    return;
  }

  // Создаем новый div для хранения поля
  const personField = document.createElement('div');
  personField.classList.add('person-field');

  // Создаем label и input для имени и фамилии
  const label = document.createElement('label');
  label.setAttribute('for', 'name_surname');
  label.textContent = 'Имя и фамилия';

  const input = document.createElement('input');
  input.id = 'name_surname';
  input.name = 'name_surname';
  input.type = 'text';

  // Создаем кнопку закрытия поля
  const closeBtn = document.createElement('img');
  closeBtn.src = 'assets/img/close.svg';
  closeBtn.classList.add('close-btn');
  closeBtn.addEventListener('click', () => {
    personField.remove();
  });

  // Добавляем элементы в personField
  personField.appendChild(label);
  personField.appendChild(input);
  personField.appendChild(closeBtn);

  // Добавляем personField в addPrsnBlock
  addPrsnBlock.appendChild(personField);

  // Удаляем ошибку, если она была
  const errorMessage = addPrsnBlock.querySelector('.error');
  if (errorMessage) {
    errorMessage.remove();
  }
}

// Отслеживаем клик на кнопку "Далее"
nextBtn.addEventListener('click', () => {
  // Получаем все поля ввода имени и фамилии
  const nameInputs = document.querySelectorAll('#name_surname');

  // Проверяем, что все поля заполнены
  for (const input of nameInputs) {
    if (input.value.trim() === '') {
      alert('Пожалуйста, заполните все поля.');
      return;
    }
  }

  // Если все поля заполнены, отправляем форму
  document.querySelector('form').submit();
});
