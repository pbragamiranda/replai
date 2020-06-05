const initUpdateNavbarOnScroll = () => {
  console.log('ok');
  const navbar = document.querySelector('.navbar-replai');
  if (navbar) {
    console.log('ok');
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-replai-white');
      } else {
        navbar.classList.remove('navbar-replai-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
