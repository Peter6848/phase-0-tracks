var text = document.getElementsByTagName('p');

text[0].style.border = '2px solid red';

var list = document.getElementsByTagName('li');

console.log(list.innerHTML);

var unList = document.querySelector('ul');

unList.innerHTML += '<li>Hello World!</li>';

for (var i=0; i<list.length; i++) {
  list[i].style.color = "green";
}

console.log(text.length);

function insertAfter(el, referenceNode) {
  referenceNode.parentNode.insertBefore(el, referenceNode.nextSibling);
}

function karmaChameleonGif(event) {
  // create html element here
  var gif = document.createElement('div');
  gif.innerHTML = '<img id="gif" src="https://media2.giphy.com/media/3o6gb7S1VPMyox95Uk/giphy.gif?response_id=5924b71a9a16253b1888075c">';
  insertAfter(gif, lastEl);
}

var lastEl = document.getElementsByTagName('button')[1];

lastEl.addEventListener("click", karmaChameleonGif);