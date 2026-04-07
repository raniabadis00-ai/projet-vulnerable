console.log('hello');

document.cookie = "username=Deschger;";
document.cookie = "email=email@xss.fr;";
document.cookie = "password=password;";


const main = document.querySelector('main');
const a = document.createElement('a');

a.textContent = 'Voir les établissements';
a.href = 'https://youtube.com';
a.target = '_blank';
a.rel = 'noopener noreferrer';

a.classList.add('btn', 'btn-danger');

main.append(a);

/** @info
 * A coller dans le input description pour la demo
 * */

// // <script>
// //
// const p = document.querySelectorAll('p');
//
// for (const e of p) {
//     e.style.color = 'red';
// }
// // </script>
