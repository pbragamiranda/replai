import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if ( document.getElementById("banner-typed-text")) {
    new Typed('#banner-typed-text', {
      strings: ["um direito de todo cidadão", "um dever dos órgãos públicos", "uma engrenagem para participação popular"],
      typeSpeed: 80,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
