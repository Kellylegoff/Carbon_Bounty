import tippy from 'tippy.js';
import 'tippy.js/dist/tippy.css';
$(() =>{
  tippy('.product_type', {
    content: "End node (objet / capteur standalone)",
  });
  tippy('.product_eco', {
    content: "Score calculé en fonction des facteurs d'émission. \n Plus le score est élevé et plus la solution présente une performance environnementale intéressante.",
  });
  // $('button').click(() => console.log('hi2'));

});
// export function test(){$(document).ready(function () {console.log('hi from mars')});}
