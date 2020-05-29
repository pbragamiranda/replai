import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()




document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  loadDynamicBannerText();
  initUpdateNavbarOnScroll();
});

