import { annotate } from 'rough-notation';

const loadHighlightText = () => {
	const e = document.querySelector('#text-highlight');
  if (e) {
	 const annotation = annotate(e, { type: 'highlight', color: '#FFD54F'});
	 annotation.show();
  }
}

export { loadHighlightText }
