document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const addPlace = (e) => {
    e.preventDefault();

    const placeInput = document.querySelector('.favorite-input');
    const favorite = placeInput.value;
    placeInput.value = "";

    const placeLi = document.createElement('li');
    placeLi.textContent = favorite;

    const placesList = document.getElementById("sf-places");
    placesList.appendChild(placeLi);
  };

  const placeSubmit = document.querySelector('.favorite-submit');
  placeSubmit.addEventListener('click', addPlace);
  // --- your code here!


  // adding new photos
  const showPhotoForm = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === 'photo-form-container') {
      photoFormDiv.className = 'photo-form-container hidden';
    } else {
      photoFormDiv.className = 'photo-form-container';
    }
  };

  const photoFormShow = document.querySelector('.photo-show-button');
  photoFormShow.addEventListener('click', showPhotoForm);

  const handlePhotoSubmit = (e) => {
    e.preventDefault();

    const photoUrlInput = document.querySelector('.photo-url-input');
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement('img');
    newImg.src = photoUrl;

    const newPhotoLi = document.createElement('li');
    newPhotoLi.appendChild(newImg);

    const dogPhotosList = document.querySelector('.dog-photos');
    dogPhotosList.appendChild(newPhotoLi);
  };

  const photoSubmit = document.querySelector('.photo-url-submit');
  photoSubmit.addEventListener('click', handlePhotoSubmit);
  // --- your code here!



});
