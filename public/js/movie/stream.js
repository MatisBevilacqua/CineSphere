const buttonPlay = document.querySelector('.show_profile_stream_container_button_play');
const profileStream = document.querySelector('.profil_stream');
const previous = document.querySelector('.profil_stream_back');

buttonPlay.addEventListener('click', function() {
    profileStream.className = 'profil_stream-active';
});

previous.addEventListener('click', function() {
    const profileStreamActive = document.querySelector('.profil_stream-active');
    profileStreamActive.className = 'profil_stream';
});

search.addEventListener('click', function() {
    console.log('matis');
});