import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["um direito de todo cidadão", "um dever dos órgãos públicos", "uma engrenagem pra participação popular"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
