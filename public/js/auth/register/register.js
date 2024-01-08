document.addEventListener('DOMContentLoaded', function() {
    const steps = document.querySelectorAll('.step');
    const prevButtons = document.querySelectorAll('.prev');
    const nextButtons = document.querySelectorAll('.next');
    const progressBar = document.querySelector('.progress-bar');
    const totalSteps = steps.length;
    let currentStep = 0;

    function updateProgressBar() {
        const progress = (currentStep + 1) / totalSteps * 100;
        progressBar.style.width = `${progress}%`;
    }

    function hideAllSteps() {
        steps.forEach(step => {
            step.style.display = 'none';
        });
    }

    hideAllSteps();
    steps[currentStep].style.display = 'flex    ';
    updateProgressBar();

    nextButtons.forEach((button, index) => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            steps[currentStep].classList.add('slide-out');
            setTimeout(() => {
                steps[currentStep].style.display = 'none';
                steps[currentStep].classList.remove('slide-out');
                currentStep++;
                steps[currentStep].style.display = 'flex';
                updateProgressBar();
            }, 500);
        });
    });

    prevButtons.forEach((button, index) => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            steps[currentStep].classList.add('slide-out-reverse');
            setTimeout(() => {
                steps[currentStep].style.display = 'none';
                steps[currentStep].classList.remove('slide-out-reverse');
                currentStep--;
                steps[currentStep].style.display = 'flex';
                updateProgressBar();
            }, 500);
        });
    });
});
