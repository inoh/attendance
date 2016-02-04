var gulp    = require('gulp');
var sass    = require('gulp-sass');
var plumber = require('gulp-plumber');
var notify  = require('gulp-notify');

gulp.task('sass', function() {
  return gulp.src('./app/assets/stylesheets/**/*.scss')
    .pipe(plumber({errorHandler: notify.onError('<%= error.message %>')}))
    .pipe(sass())
    .pipe(gulp.dest('./public/'));
});
