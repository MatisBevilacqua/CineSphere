const searchButton = document.querySelector('.show_search_page');
const searchPage = document.querySelector('.movie_search');

searchButton.addEventListener('click', function() {
    searchPage.className = 'movie_search-active';
});