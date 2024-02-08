const calendar = document.querySelector('#date');

var date = new Date();
date.setDate(date.getDate() - 4380);

const MAX_AGE = date.toLocaleDateString().split('.').reverse().join('-');
calendar.setAttribute('max', MAX_AGE);

const birth = document.querySelector('.date');
birth.innerHTML = birth.innerHTML.split('-').reverse().join('-');
