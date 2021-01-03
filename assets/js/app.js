//on récupère l'input
const inputMovie = document.querySelector("#movie");
//on récupère le formulaire
const form = document.querySelector("form");
//on récupère la datalist
const datalist = document.querySelector("datalist");

const xhr = new XMLHttpRequest();

//on écoute l'évenement input sur l'input
inputMovie.addEventListener("input", (e) => {
  datalist.innerHTML = "";
  if (inputMovie.value.length >= 3) {
    const formData = new FormData(form);
    //asynchrone avec fetch
    fetch("assets/php/autocomplete.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.json())
      .then((movies) => {
        movies.forEach((movie) => {
          console.log(movie);
          let option = document.createElement("option");
          option.setAttribute("value", movie.title);
          option.textContent = movie.title;
          option.setAttribute("id", `movie-${movie.id}`);
          datalist.appendChild(option);
        });
      })
      .catch((error) =>
        console.error(error)
      ); 
    /*xhr.open("POST", "assets/php/autocomplete.php");
    xhr.send(formData);
    xhr.addEventListener("readystatechange", (e) => {
      if (xhr.readyState === 4 && xhr.status === 200) {
        datalist.innerHTML = "";
        const movies = JSON.parse(xhr.responseText);
        movies.forEach((movie) => {
          let option = document.createElement("option");
          option.setAttribute("value", movie.title);
          option.textContent = movie.title;
          option.setAttribute("id", `movie-${movie.id}`);
          datalist.appendChild(option);
        });
      }
    });*/
  }
});
