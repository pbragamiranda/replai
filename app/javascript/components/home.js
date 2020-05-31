import { annotate } from 'rough-notation';

const e = document.querySelector('#text-highlight');
const annotation = annotate(e, { type: 'highlight' });
annotation.show();

const loadHighlightText = () => {
  const e = document.querySelector('#text-highlight');
	const annotation = annotate(e, { type: 'highlight', color: '#FFF176' });
	annotation.show();
}

export { loadHighlightText }