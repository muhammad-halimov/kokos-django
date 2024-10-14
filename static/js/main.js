const getCookie = name => { // Получения куки-токена для авторизации сессии на сервере
    let cookieValue = null;
    if (document.cookie && document.cookie !== '') {
        const cookies = document.cookie.split(';');
        for (let i = 0; i < cookies.length; i++) {
            const cookie = cookies[i].trim();
            if (cookie.substring(0, name.length + 1) === (name + '=')) {
                cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                break;
            }
        }
    }

    return cookieValue;
};

if ('VKIDSDK' in window) {
    const VKID = window.VKIDSDK;

    VKID.Config.init({
        app: 52427018,
        redirectUrl: 'http://localhost',
        responseMode: VKID.ConfigResponseMode.Callback,
        source: VKID.ConfigSource.LOWCODE,
        state: 'dj29fnsadjsd82', // Произвольная строка состояния приложения.
        codeVerifier: 'FGH767Gd65', // Верификатор в виде случайной строки. Обеспечивает защиту передаваемых данных.
        scope: 'vkid.personal_info email', // Список прав доступа, которые нужны приложению.
    });

    const oneTap = new VKID.OneTap();

    oneTap.render({
        container: document.currentScript.parentElement,
        fastAuthEnabled: false,
        showAlternativeLogin: true,
        styles: {
            borderRadius: 7,
            height: 40
        }
    })
        .on(VKID.WidgetEvents.ERROR, vkidOnError)
        .on(VKID.OneTapInternalEvents.LOGIN_SUCCESS, function (payload) {
            const code = payload.code;
            const deviceId = payload.device_id;

            VKID.Auth.exchangeCode(code, deviceId)
                .then(vkidOnSuccess)
                .catch(vkidOnError);
        });
}

function vkidOnSuccess(data) {
    // Обработка полученного результата
    try {
        const response = fetch('/vk-check/', { // Страница в которую идет запрос
            method: 'POST',
            body: JSON.stringify({user_info: data}),
            // То что будет отправлено на сервер в БД
            headers: {
                'X-CSRFToken': getCookie('csrftoken'),
                'Content-Type': 'application/json',
            },
        }); // Отправка запроса добавление очереди в БД
    } catch (error) { // Обработка исключений и ошибок
        console.error('Ошибка при отправке запроса:', error);
        alert('Произошла ошибка. Пожалуйста, попробуйте еще раз.');
    }
}

function vkidOnError(error) {
    // Обработка ошибки
}