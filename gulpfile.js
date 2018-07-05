'use strict';

const gulp          = require('gulp');
const ejs           = require('gulp-ejs');
const sass          = require('gulp-sass');
const typescript    = require('gulp-typescript');
const imagemin      = require('gulp-imagemin');

const concat        = require('gulp-concat');
const uglify        = require('gulp-uglify');
const autoprefixer  = require('gulp-autoprefixer');
const rename        = require('gulp-rename');
const newer         = require('gulp-newer');
const plumber       = require('gulp-plumber');
const sourcemaps    = require('gulp-sourcemaps');

const watch         = require('gulp-watch');
const browserSync   = require('browser-sync').create();
const gulpSequence  = require('gulp-sequence');
const del           = require('del');

const paths = {
    src: './src',
    dest: './dist',
    bundles: './dist/assets/bundles'
};

const config = {
    templates: {
        watchFiles: paths.src + '/**/*.tpl',
        buildFiles: [
            paths.src + '/**/pages/**/*.tpl',
        ]
    },
    styles: {
        bundleFileName: 'bundle.min.css',
        watchFiles: {
            scss: [
                paths.src + '/**/*.scss'
            ],
            css: []
        },
        buildFiles: {
            scss: [
                paths.src + '/**/library.blocks/**/*.scss',
                paths.src + '/**/common.blocks/**/*.scss',
                paths.src + '/**/sections/**/*.scss',
                paths.src + '/**/pages/**/*.scss',
            ],
            css: [
                'node_modules/slick-carousel/slick/slick.css',
                'node_modules/@fancyapps/fancybox/dist/jquery.fancybox.min.css',
                'node_modules/nouislider/distribute/nouislider.min.css',
                'node_modules/filepond/dist/filepond.min.css',
            ]
        }
    },
    scripts: {
        bundleFileName: 'bundle.min.js',
        watchFiles: {
            ts: [
                paths.src + '/**/*.ts'
            ],
            js: []
        },
        buildFiles: {
            ts: [
                paths.src + '/**/*.ts'
            ],
            js: [
                'node_modules/jquery/dist/jquery.min.js',
                // Bootstrap 4
                'node_modules/bootstrap/dist/js/bootstrap.bundle.min.js',
                // Image Gallery
                'node_modules/@fancyapps/fancybox/dist/jquery.fancybox.min.js',
                // Price Slider
                'node_modules/nouislider/distribute/nouislider.min.js',
                'node_modules/wnumb/wNumb.js',
                // Slick Slider
                'node_modules/slick-carousel/slick/slick.min.js',
                // Drag and drop Uploader
                'node_modules/filepond/dist/filepond.js',
                // Sticky menu
                'node_modules/sticky-kit/dist/sticky-kit.min.js',
            ]
        }
    },
    images: {
        watchFiles: paths.src + '/**/*.{svg,jpg,jpeg,png,gif}',
        buildFiles: paths.src + '/**/*.{svg,jpg,jpeg,png,gif}'
    },
    fonts: {
        watchFiles: paths.src + '/**/*.{eot,woff,woff2,ttf}',
        buildFiles: paths.src + '/**/*.{eot,woff,woff2,ttf}'
    }
};

gulp.task('templates:build', function () {
    return gulp.src(config.templates.buildFiles)
        .pipe(plumber())
        .pipe(ejs({
            bundlePath: {
                styles: paths.bundles.replace(paths.dest + '/', '') + '/' + config.styles.bundleFileName,
                scripts: paths.bundles.replace(paths.dest + '/', '') + '/' + config.scripts.bundleFileName,
            }
        }))
        .pipe(rename(function(path) {
            path.basename  = path.basename.replace('page-', '');
            path.extname = '.html';
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.dest))
        .pipe(browserSync.reload({ stream: true }));
});

gulp.task('styles:buildSCSS', function () {
    const bundleSCSSPath = paths.bundles + '/' + config.styles.bundleFileName,
          bundleSCSSFileName = 'scss.' + config.styles.bundleFileName;

    return gulp.src(config.styles.buildFiles.scss)
        .pipe(newer(bundleSCSSPath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(concat(bundleSCSSFileName))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('styles:buildCSS', function () {
    const bundleCSSPath = paths.bundles + '/' + config.styles.bundleFileName,
          bundleCSSFileName = 'css.' + config.styles.bundleFileName;

    return gulp.src(config.styles.buildFiles.css)
        .pipe(newer(bundleCSSPath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(autoprefixer())
        .pipe(concat(bundleCSSFileName))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('styles:build', ['styles:buildSCSS', 'styles:buildCSS']);

gulp.task('scripts:buildTS', function() {
    const bundleTSFilePath = paths.bundles + '/ts.' + config.scripts.bundleFileName,
          bundleTSFileName = 'ts.' + config.scripts.bundleFileName;

    return gulp.src(config.scripts.buildFiles.ts)
        .pipe(newer(bundleTSFilePath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(typescript({
            outFile: bundleTSFileName
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }))
});
gulp.task('scripts:buildJS', function() {
    const bundleJSFilePath = paths.bundles + '/js.' + config.scripts.bundleFileName,
          bundleJSFileName = 'js.' + config.scripts.bundleFileName;

    return gulp.src(config.scripts.buildFiles.js)
        .pipe(newer(bundleJSFilePath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(concat(bundleJSFileName))
        .pipe(uglify())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('scripts:build', ['scripts:buildTS', 'scripts:buildJS']);

gulp.task('images:build', function() {
    return gulp.src(config.images.buildFiles)
        .pipe(newer(paths.dest))
        .pipe(plumber())
        .pipe(imagemin())
        .pipe(gulp.dest(paths.dest))
        .pipe(browserSync.reload({ stream: true }));
});

gulp.task('fonts:build', function() {
    return gulp.src(config.fonts.buildFiles)
        .pipe(newer(paths.dest))
        .pipe(plumber())
        .pipe(gulp.dest(paths.dest));
});

// Clean destination folder
gulp.task('clean', function() {
    del(paths.dest);
});

// Build
gulp.task('build', [
    'templates:build',
    'styles:build',
    'scripts:build',
    'images:build',
    'fonts:build'
]);

gulp.task('watch', function() {
    watch(config.templates.watchFiles, function() {
        gulp.start('templates:build');
    });
    watch(config.styles.watchFiles.scss, function() {
        gulp.start('styles:buildSCSS');
    });
    watch(config.styles.watchFiles.css, function() {
        gulp.start('styles:buildCSS');
    });
    watch(config.scripts.watchFiles.ts, function() {
        gulp.start('scripts:buildTS');
    });
    watch(config.scripts.watchFiles.js, function() {
        gulp.start('scripts:buildJS');
    });
    watch(config.images.watchFiles, function() {
        gulp.start('images:build');
    });
    watch(config.fonts.watchFiles, function() {
        gulp.start('fonts:build');
    });
});

gulp.task('serve', ['build', 'watch'], function() {
    browserSync.init({
        server: {
            baseDir: paths.dest
        },
        tunnel: true,
        host: 'localhost',
        port: 9000
    });
});

gulp.task('default', ['build']);

