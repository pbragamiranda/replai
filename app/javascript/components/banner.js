import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["fucking"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
