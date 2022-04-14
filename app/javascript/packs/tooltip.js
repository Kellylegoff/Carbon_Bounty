import tippy from 'tippy.js';
import 'tippy.js/dist/tippy.css';
import 'tippy.js/themes/light.css';

$(() =>{
  tippy('.product_type', {
    content: "End node (objet / capteur standalone)",
    theme: 'light',
    appendTo: document.body,
    arrow: true,
  });
  tippy('.product_eco', {
    content: "Score calculé en fonction des facteurs d'émission. \n Plus le score est élevé et plus la solution présente une performance environnementale intéressante.",
    theme: 'light',
    appendTo: document.body,
    arrow: true,
  });
  // $('button').click(() => console.log('hi2'));

});
// export function test(){$(document).ready(function () {console.log('hi from mars')});}
