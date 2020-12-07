const ProgressBar = require('progressbar.js')

const initProgressBar = () => {
const globalStats = document.getElementById("container")
if (globalStats) {
  if (globalStats.dataset.isloaded === 'false') {
const bar = new ProgressBar.Circle(container, {
  strokeWidth: 9,
  easing: 'easeInOut',
  duration: 2500,
  color: '#6781F7',
  trailColor: '#243046',
  trailWidth: 1,
  svgStyle: null
});
  bar.animate(globalStats.dataset.global);  // Number from 0.0 to 1.0
  globalStats.dataset.isloaded = 'true';
}
}
}

export { initProgressBar }
