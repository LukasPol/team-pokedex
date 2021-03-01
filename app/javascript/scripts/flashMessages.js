import Toastify from 'toastify-js';

document.addEventListener('DOMContentLoaded', () => {
  const backgroundColors = {
    alert: "#ED1C24",
    error: "#ED1C24",
    notice: "#FFCB05"
  }

  JSON.parse(document.body.dataset.flashMessages).forEach(flashMessage => {
    const [type, msg] = flashMessage;

    Toastify({
      text: msg,
      duration: 3000,
      close: true,
      backgroundColor: backgroundColors[type],
      stopOnFocus: true
    }).showToast();
  });
});