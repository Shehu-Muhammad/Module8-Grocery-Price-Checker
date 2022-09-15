let btn = document.querySelectorAll("button");

btn.forEach((button)=> {
    button.addEventListener("click", addItemToGroceryList);
});

function addItemToGroceryList() {
    alert("Item added to grocery list");
}