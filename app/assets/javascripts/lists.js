let itemHTML = ""; // Initializes with a blank string.

// Used for adding item fields to grocery list form
function addItem() {
  const nItems = document.querySelector("#nItems"); // Hidden field from before
  const items = document.querySelectorAll(".groceryItem"); // Container for HTML that we want to duplicate
  if (itemHTML === "") itemHTML = items[0].innerHTML; // Here is where we take the first instance of Grocery Item and write it to the string

  document.querySelector("#nItems").value++; // Increments hidden field
  items[items.length - 1].insertAdjacentHTML(
    "beforeend",
    itemHTML.replace(/1/g, nItems.value)
  ); // Takes the itemHTML (string) and puts it into the grocery list
}
