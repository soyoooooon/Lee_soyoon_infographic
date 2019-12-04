(()=> {
console.log("hey");

let sTars = document.querySelectorAll('.star');
let popOver = document.querySelector('.popover');


function showPopover(data, el) {
    popOver.querySelector(".country").textContent = `Country: ${data.country}`;
    popOver.querySelector(".rank").textContent = `Rank: ${data.rank}`;
    popOver.querySelector(".total").textContent = data.total;

    popOver.classList.add('show-popover');

    el.appendChild(popOver);
  }





function fetchData() {
    let url = `/info/${this.dataset.target}`,
        targetElement = this;

        fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data);
            showPopover(data, targetElement);
        })
        .catch(function(error) {
            console.log(error);
        })
  }

debugger;

  sTars.forEach(button => button.addEventListener("click", fetchData));

})();


