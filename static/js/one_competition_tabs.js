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

const addPersonBtn = document.querySelector('.add_person_btn');
const addingPersonBlock = document.querySelector('.adding_person_bock');
const ticketForm = document.getElementById('ticketForm');

addPersonBtn.addEventListener('click', () => {
  addingPersonBlock.style.display = 'block';

  const newPersonBlock = document.createElement('div');
  newPersonBlock.classList.add('input_wrapper');

  newPersonBlock.innerHTML = `
    <label for="name_surname">
      <span>Имя и фамилия</span>
      <div class="input_wrapper">
        <input id="name_surname" name="name_surname" type="text">
        <img src="/static/img/icons/close.svg" class="remove_person_btn">
      </div>
    </label>
  `;

  addingPersonBlock.appendChild(newPersonBlock);

  const removePersonBtn = newPersonBlock.querySelector('.remove_person_btn');
  removePersonBtn.addEventListener('click', () => {
    newPersonBlock.remove();
  });

  const nameInput = newPersonBlock.querySelector('#name_surname');
  nameInput.addEventListener('input', () => {
    const errorMessage = newPersonBlock.querySelector('.error');
    if (nameInput.value.trim() !== '') {
      errorMessage.style.display = 'none';
    } else {
      errorMessage.style.display = 'block';
    }
  });
});

ticketForm.addEventListener('submit', (event) => {
  event.preventDefault();

  const nameInput = document.getElementById('name_surname');
  const emailInput = document.getElementById('email');
  const phoneInput = document.getElementById('phone');

  let isFormValid = true;

  if (nameInput.value.trim() === '') {
    nameInput.style.border = '1px solid #c72020';
    isFormValid = false;
  } else {
    nameInput.style.border = '';
  }

  if (emailInput.value.trim() === '') {
    emailInput.style.border = '1px solid #c72020';
    isFormValid = false;
  } else {
    emailInput.style.border = '';
  }

  if (phoneInput.value.trim() === '') {
    phoneInput.style.border = '1px solid #c72020';
    isFormValid = false;
  } else {
    phoneInput.style.border = '';
  }

  const additionalPersonBlocks = document.querySelectorAll('.input_wrapper');
  additionalPersonBlocks.forEach((block) => {
    const nameInput = block.querySelector('#name_surname');
    if (nameInput.value.trim() === '') {
      nameInput.style.border = '1px solid #c72020';
      isFormValid = false;
    } else {
      nameInput.style.border = '';
    }
  });

  if (isFormValid) {
    // Отправляем форму
    ticketForm.submit();
  } else {
    // Выводим ошибку
    console.log('Не все поля заполнены');
  }
});
