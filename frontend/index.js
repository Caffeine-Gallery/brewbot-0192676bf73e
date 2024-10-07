import { backend } from 'declarations/backend';

async function updateQuote() {
    try {
        const quote = await backend.getRandomQuote();
        document.getElementById('random-quote').textContent = quote;
    } catch (error) {
        console.error('Error fetching quote:', error);
        document.getElementById('random-quote').textContent = 'Error loading quote. Please try again later.';
    }
}

document.addEventListener('DOMContentLoaded', () => {
    updateQuote();
    setInterval(updateQuote, 10000); // Update quote every 10 seconds
});
