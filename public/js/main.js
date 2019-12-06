(()=> {
console.log("hey");

let sTars = document.querySelectorAll('.star');
let popOver = document.querySelector('.popover');
let closeBtn = document.querySelector('.close-btn');

function showPopover(data, el) {

    popOver.querySelector(".country").textContent = `Country: ${data.country}`;
    popOver.querySelector(".rank").textContent = `Rank: ${data.rank}`;
    popOver.querySelector(".flag").innerHTML = `<img src = "images/${data.image}">`
    popOver.querySelector(".total").textContent = data.total;

    popOver.classList.add('show-popover');

    //el.appendChild(popOver);
  };





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
  };

  function closePop() {
        // let el = .firstElementChild;
        // event.preventDefault()
        popOver.classList.remove('show-popover');
        
        // el.removeChild(popOver);
    
    
  };


  sTars.forEach(button => button.addEventListener("click", fetchData));
  closeBtn.addEventListener("click", closePop);
})();


