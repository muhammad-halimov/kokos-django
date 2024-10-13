const tabsProfile = document.querySelectorAll('.tab_profile');
const tabContentsProfile = document.querySelectorAll('.profile_competitions, .profile_orders, .profile_settings, .profile_question, .profile_questiond');

tabsProfile.forEach((tab, index) => {
    tab.addEventListener('click', () => {
        tabsProfile.forEach(t => t.classList.remove('active'));
        tab.classList.add('active');

        tabContentsProfile.forEach(content => content.classList.remove('active'));
        tabContentsProfile[index].classList.add('active');
    });
});
