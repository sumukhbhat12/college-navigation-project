const searchButton = document.getElementById('search-button');
const searchInput = document.getElementById('search-input');
/*searchButton.addEventListener('click', () => {
  const inputValue = searchInput.value;
  alert(inputValue);
});
*/
function initMap()
{
  var location = {lat: 13.183279,lng: 74.933526};
  var map = new google.maps.Map(document.getElementById("map"),{
    zoom:4,
    center: location
  });
}