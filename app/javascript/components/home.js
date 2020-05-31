import { annotate } from 'rough-notation';

const e = document.querySelector('#text-highlight');
const annotation = annotate(e, { type: 'highlight', color: '#FFD54F' });
annotation.show();

const loadHighlightText = () => {
	const e = document.querySelector('#text-highlight');
	const annotation = annotate(e, { type: 'highlight', color: '#FFD54F' });
	annotation.show();
}

export { loadHighlightText }