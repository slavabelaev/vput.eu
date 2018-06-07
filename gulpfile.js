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
        watchFiles: paths.src + '/**/*.scss',
        buildFiles: [
            paths.src + '/**/*.scss',
            'node_modules/slick-carousel/slick/slick.scss',
            'node_modules/slick-carousel/slick/slick-theme.scss',

            'node_modules/@fancyapps/fancybox/dist/jquery.fancybox.min.css',
            'node_modules/nouislider/distribute/nouislider.min.css',
        ]
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
                'node_modules/bootstrap/dist/js/bootstrap.bundle.min.js',
                'node_modules/@fancyapps/fancybox/dist/jquery.fancybox.min.js',
                'node_modules/nouislider/distribute/nouislider.min.js',
                'node_modules/wnumb/wNumb.js',
                'node_modules/slick-carousel/slick/slick.min.js',
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
                styles: paths.bundles.replace(paths.dest, '') + '/' + config.styles.bundleFileName,
                scripts: paths.bundles.replace(paths.dest, '') + '/' + config.scripts.bundleFileName,
            }
        }))
        .pipe(rename(function(path) {
            path.basename  = path.basename.replace('-page', '');
            path.extname = '.html';
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.dest))
        .pipe(browserSync.reload({ stream: true }));
});

gulp.task('styles:build', function () {
    var bundleStylesPath = paths.bundles + '/' + config.styles.bundleFileName;

    return gulp.src(config.styles.buildFiles)
        .pipe(newer(bundleStylesPath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(concat(config.styles.bundleFileName))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }));
});

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
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('scripts:concatBundles', function() {
    const bundleTSFilePath = paths.bundles + '/ts.' + config.scripts.bundleFileName,
          bundleJSFilePath = paths.bundles + '/js.' + config.scripts.bundleFileName;

    return gulp.src([
        bundleJSFilePath,
        bundleTSFilePath
    ])
        .pipe(newer(bundleJSFilePath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(concat(config.scripts.bundleFileName))
        .pipe(uglify())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('scripts:removeBundles', function() {
    const bundleTSFilePath = paths.bundles + '/ts.' + config.scripts.bundleFileName,
          bundleTSMapFilePath = bundleTSFilePath + '.map',
          bundleJSFilePath = paths.bundles + '/js.' + config.scripts.bundleFileName,
          bundleJSMapFilePath = bundleJSFilePath + '.map';

    del(bundleTSFilePath);
    del(bundleTSMapFilePath);
    del(bundleJSFilePath);
    del(bundleJSMapFilePath);
});

gulp.task('scripts:build', gulpSequence(['scripts:buildTS', 'scripts:buildJS'], 'scripts:concatBundles', 'scripts:removeBundles'));

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
    watch(config.styles.watchFiles, function() {
        gulp.start('styles:build');
    });

    var watchScriptFiles = config.scripts.watchFiles.ts.concat(config.scripts.watchFiles.js);
    watch(watchScriptFiles, function() {
        gulp.start('scripts:build');
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

