import "bootstrap";

import { loadHighlightText } from '../components/home';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
import { generateBranchDropDown } from '../components/lai-form';
import { initModal } from '../components/init_modal';
import { toggleRequestArrow } from '../components/toggle-request-arrow';


require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()




document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  loadDynamicBannerText();
  initUpdateNavbarOnScroll();
  loadHighlightText();
  generateBranchDropDown();
  initModal();
  toggleRequestArrow();
});

