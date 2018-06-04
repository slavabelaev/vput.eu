'use strict';

const gulp        = require('gulp');
const ejs         = require('gulp-ejs');
const sass        = require('gulp-sass');
const typescript  = require('gulp-typescript');
const imagemin    = require('gulp-imagemin');

const concat      = require('gulp-concat');
const autoprefixer = require('gulp-autoprefixer');
const rename      = require('gulp-rename');
const newer       = require('gulp-newer');
const plumber     = require('gulp-plumber');
const sourcemaps  = require('gulp-sourcemaps');

const watch       = require('gulp-watch');
const browserSync = require('browser-sync').create();
const del         = require('del');

const paths = {
    src: './src',
    dest: './dist',
    bundles: './dist/assets/bundles'
};

const config = {
    templates: {
        watchFiles: paths.src + '/**/*.tpl',
        buildFiles: paths.src + '/templates/pages/**/*.tpl'
    },
    styles: {
        bundleFileName: 'bundle.min.css',
        watchFiles: paths.src + '/**/*.scss',
        buildFiles: [
            paths.src + '/**/bootstrap.scss',
            paths.src + '/templates/common.blocks/**/*.scss',
            paths.src + '/templates/pages/**/*.scss',
            paths.src + '/templates/sections/**/*.scss'
        ]
    },
    scripts: {
        bundleFileName: 'bundle.min.js',
        watchFiles: paths.src + '/**/*.ts',
        buildFiles: [
            paths.src + '/templates/common.blocks/**/*.ts',
            paths.src + '/templates/pages/**/*.ts',
            paths.src + '/templates/sections/**/*.ts'
        ]
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

gulp.task('build:templates', function () {
    return gulp.src(config.templates.buildFiles)
        .pipe(plumber())
        .pipe(ejs())
        .pipe(rename(function(path) {
            path.basename  = path.basename.replace('-page', '');
            path.extname = '.html';
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.dest))
        .pipe(browserSync.reload({ stream: true }));
});

gulp.task('build:styles', function () {
    return gulp.src(config.styles.buildFiles)
        .pipe(newer(paths.bundles + config.styles.bundleFileName))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(concat(config.styles.bundleFileName))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }))
});

gulp.task('build:scripts', function() {
    return gulp.src(config.scripts.buildFiles)
        .pipe(newer(paths.bundles + config.scripts.bundleFileName))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(typescript({
            outFile: config.scripts.bundleFileName
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.bundles))
        .pipe(browserSync.reload({ stream: true }))
});

gulp.task('build:images', function() {
    return gulp.src(config.images.buildFiles)
        .pipe(newer(paths.dest))
        .pipe(plumber())
        .pipe(imagemin())
        .pipe(gulp.dest(paths.dest))
        .pipe(browserSync.reload({ stream: true }))
});

gulp.task('build:fonts', function() {
    return gulp.src(config.fonts.buildFiles)
        .pipe(newer(paths.dest))
        .pipe(plumber())
        .pipe(gulp.dest(paths.dest))
});

// Clean destination folder
gulp.task('clean', function() {
    del(paths.dest);
});

// Build
gulp.task('build', [
    'build:templates',
    'build:styles',
    'build:scripts',
    'build:images',
    'build:fonts'
]);

gulp.task('watch', function() {
    watch(config.templates.watchFiles, function() {
        gulp.start('build:templates');
    });
    watch(config.styles.watchFiles, function() {
        gulp.start('build:styles');
    });
    watch(config.scripts.watchFiles, function() {
        gulp.start('build:scripts');
    });
    watch(config.images.watchFiles, function() {
        gulp.start('build:images');
    });
    watch(config.fonts.watchFiles, function() {
        gulp.start('build:fonts');
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
