// const gulp = require('gulp');
// const { src, dest, watch } = require('gulp');
// const sass = require('gulp-sass');
// const minifyCSS = require('gulp-csso');
// const babel = require('gulp-babel');
// const concat = require('gulp-concat');
// var postcss = require('gulp-postcss');
// var cssnext = require('postcss-cssnext');
// var livereload = require('gulp-livereload');
// var notify = require('gulp-notify');
//
// const browserSync = require('browser-sync').create();
//
// function css() {
//     var processors = [
//         cssnext({})
// ];
//     return src('./sass/*.scss', { sourcemaps: true })
//         .pipe(sass())
//         .pipe(postcss(processors))
//         .pipe(notify("success"))
//         .pipe(dest('.'))
//         //.pipe(browserSync.stream())
//         .pipe(livereload());
// }
//
// function js() {
//     return src('./js/*.js', { sourcemaps: true })
//         .pipe(babel({
//             presets: ['@babel/env']
//         }))
//         .pipe(concat('build.min.js'))
//         .pipe(dest('./js/min', { sourcemaps: true }));
// }
//
// function browser() {
//     browserSync.init({
//         proxy: 'localhost',
//         files: [
//             './**/*.php'
//         ],
//         open        : false,
//         notify      : false,
//         ghostMode   : false,
//         ui: {
//             port: 8001
//         }
//     });
//
//     watch('./sass/**/*.scss', css);
//     watch('./js/*.js', js).on('change', browserSync.reload);
// }
//
// exports.css = css;
// exports.js = js;
// exports.default = browser;
/*************************************/
// const gulp = require('gulp');
// const sass = require('gulp-sass');
// const browserSync = require('browser-sync').create();
// //compile scss into css
// function style() {
//     return gulp.src('sass/**/*.scss')
//         .pipe(sass().on('error',sass.logError))
//         .pipe(gulp.dest('./'))
//         .pipe(browserSync.stream());
// }
// function watch() {
//     browserSync.init({
//         server: {
//             baseDir: "./src",
//            // index: "/index.html"
//         }
//     });
//     gulp.watch('sass/**/*.scss', style)
//     gulp.watch('./js/**/*.js').on('change', browserSync.reload);
// }
// exports.style = style;
// exports.watch = watch;
'use strict'
require('es6-promise').polyfill();

var gulp          = require('gulp'),
    sass          = require('gulp-sass'),
    rtlcss        = require('gulp-rtlcss'),
    autoprefixer  = require('gulp-autoprefixer'),
    plumber       = require('gulp-plumber'),
    gutil         = require('gulp-util'),
    rename        = require('gulp-rename'),
    concat        = require('gulp-concat'),
    jshint        = require('gulp-jshint'),
    uglify        = require('gulp-uglify'),
    imagemin      = require('gulp-imagemin'),
    browserSync   = require('browser-sync').create(),
    reload        = browserSync.reload;

var onError = function( err ) {
    console.log('An error occurred:', gutil.colors.magenta(err.message));
    gutil.beep();
    this.emit('end');
};
gulp.task('style', function() {
    return gulp.src('./sass/*.scss').
        pipe(sass())
        .pipe(gulp.dest('./src'));
});
// Sass
gulp.task('sass', function() {
    return gulp.src('./sass/style.scss')
        .pipe(plumber({ errorHandler: onError }))
        .pipe(sass())
        .pipe(autoprefixer())
        .pipe(gulp.dest('./'))
        .pipe(gulp.dest('./'))
        .pipe(rtlcss())                     // Convert to RTL
        .pipe(rename({ basename: 'rtl' }))  // Rename to rtl.css
        .pipe(gulp.dest('./'));             // Output RTL stylesheets (rtl.css)
});

// JavaScript
gulp.task('js', function() {
    return gulp.src(['./js/*.js'])
        .pipe(jshint())
        .pipe(jshint.reporter('default'))
        .pipe(concat('app.js'))
        .pipe(rename({suffix: '.min'}))
        .pipe(uglify())
        .pipe(gulp.dest('./js'));
});

// Images
gulp.task('images', function() {
    return gulp.src('./images/src/*')
        .pipe(plumber({ errorHandler: onError }))
        .pipe(imagemin({ optimizationLevel: 7, progressive: true }))
        .pipe(gulp.dest('./images/dist'));
});

// Watch
gulp.task('watch', function() {
    // browserSync.init({
    //     files: ['./**/*.php'],
    //     proxy: 'http://localhost:8080/testshop/',
    // });
    gulp.watch('./sass/**/*.scss', gulp.series('sass', reload));
//    gulp.watch('./js/*.js', gulp.series('js', reload));
    gulp.watch('images/src/*', gulp.series('images', reload));
});

// gulp.task('default', gulp.series('sass', 'images', 'watch'));
gulp.task('default', gulp.series('sass','style'));
