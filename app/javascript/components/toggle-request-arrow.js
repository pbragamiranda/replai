const toggleRequestArrow = () => {
  const requestCards = document.querySelectorAll(".request-js");
  if (requestCards) {
    requestCards.forEach((card) => {
      card.addEventListener("click", (event) => {
        const icon = card.querySelector(".icon-js");
        icon.classList.toggle("fa-chevron-up");
        icon.classList.toggle("fa-chevron-down");
      })
    })
  }
  //   para cada card
  // add eventlistener para um click
  // quando o click acontecer a gente vai trocara a classe do icone

}

export { toggleRequestArrow };
