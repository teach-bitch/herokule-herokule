'use strict';

var gulp = require('gulp');
var sass = require('gulp-sass');

sass.compiler = require('node-sass');

gulp.task('sass', function () {
  return gulp.src('./app/assets/stylesheets/sass/**/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('./app/assets/stylesheets'));
});

gulp.task('watch', function () {
  gulp.watch('./app/assets/stylesheets/sass/**/*.scss', gulp.series('sass'));
});