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
const csso          = require('gulp-csso');
const plumber       = require('gulp-plumber');
const sourcemaps    = require('gulp-sourcemaps');

const watch         = require('gulp-watch');
const browserSync   = require('browser-sync').create();
const del           = require('del');

const paths = {
    src: './src',
    dest: './dist',
    scripts: {
        bundle: './dist/assets/bundles',
        site: './dist/assets/pages/site',
        cabinet: './dist/assets/pages/cabinet',
        articles: './dist/assets/articles'
    },
    templates: {
        site: './dist',
        cabinet: './dist',
        articles: './dist',
    },
    styles: {
        bundle: './dist/assets/bundles',
        site: './dist/assets/pages/site',
        cabinet: './dist/assets/pages/cabinet',
        articles: './dist/assets/articles'
    },
    languages: './dist/assets/lang'
};

const config = {
    languages: {
        watchFiles: paths.src + '/**/*.json'
    },
    templates: {
        watchFiles: {
            site: [paths.src + '/**/*.tpl'],
            cabinet: [paths.src + '/**/*.tpl'],
            articles: [paths.src + '/**/*.tpl']
        },
        buildFiles: {
            site: [paths.src + '/**/pages/site/**/*.tpl'],
            cabinet: [paths.src + '/**/pages/cabinet/**/*.tpl'],
            articles: [paths.src + '/**/pages/articles/**/*.tpl']
        }
    },
    styles: {
        bundleFileName: 'bundle.min.css',
        watchFiles: {
            bundleSCSS: [
                paths.src + '/**/library.blocks/**/*.scss',
                paths.src + '/**/common.blocks/**/*.scss',
                paths.src + '/**/sections/**/*.scss',
                paths.src + '/**/forms/**/*.scss',
            ],
            bundleCSS: [],
            site: [paths.src + '/**/pages/site/**/*.scss'],
            cabinet: [paths.src + '/**/pages/cabinet/**/*.scss'],
            articles: [paths.src + '/**/articles/**/*.scss']

        },
        buildFiles: {
            bundleSCSS: [
                paths.src + '/**/library.blocks/**/*.scss',
                paths.src + '/**/common.blocks/**/*.scss',
                paths.src + '/**/sections/**/*.scss',
                paths.src + '/**/forms/**/*.scss',
            ],
            bundleCSS: [
                'node_modules/slick-carousel/slick/slick.css',
                'node_modules/@fancyapps/fancybox/dist/jquery.fancybox.min.css',
                'node_modules/nouislider/distribute/nouislider.min.css',
                'node_modules/filepond/dist/filepond.min.css'
            ],
            site: [paths.src + '/**/pages/site/**/*.scss'],
            cabinet: [paths.src + '/**/pages/cabinet/**/*.scss'],
            articles: [paths.src + '/**/articles/**/*.scss']
        }
    },
    scripts: {
        bundleFileName: 'bundle.min.js',
        watchFiles: {
            bundleTS: [
                paths.src + '/**/library.blocks/**/*.ts',
                paths.src + '/**/common.blocks/**/*.ts',
                paths.src + '/**/sections/**/*.ts',
                paths.src + '/**/forms/**/*.ts',
            ],
            bundleJS: [],
            site: [paths.src + '/**/pages/site/**/*.ts'],
            cabinet: [paths.src + '/**/pages/cabinet/**/*.ts'],
            articles: [paths.src + '/**/articles/**/*.ts']
        },
        buildFiles: {
            bundleTS: [
                paths.src + '/**/library.blocks/**/*.ts',
                paths.src + '/**/common.blocks/**/*.ts',
                paths.src + '/**/sections/**/*.ts',
                paths.src + '/**/forms/**/*.ts',
            ],
            bundleJS: [
                // JQuery
                'node_modules/jquery/dist/jquery.min.js',
                // Bootstrap 4
                'node_modules/bootstrap/dist/js/bootstrap.bundle.min.js',
                // Image Gallery
                'node_modules/@fancyapps/fancybox/dist/jquery.fancybox.min.js',
                // Vue
                'node_modules/vue/dist/vue.min.js',
                // Price Slider
                'node_modules/nouislider/distribute/nouislider.min.js',
                'node_modules/wnumb/wNumb.js',
                // Slick Slider
                'node_modules/slick-carousel/slick/slick.min.js',
                // Drag and drop Uploader
                'node_modules/filepond/dist/filepond.js',
                // Sticky Sidebar
                //'node_modules/sticky-sidebar/dist/sticky-sidebar.min.js'
            ],
            site: [paths.src + '/**/pages/site/**/*.ts'],
            cabinet: [paths.src + '/**/pages/cabinet/**/*.ts'],
            articles: [paths.src + '/**/articles/**/*.ts']
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

gulp.task('languages:build', function () {
    return gulp.src(config.languages.watchFiles)
        .pipe(plumber())
        .pipe(rename(function(path) {
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.languages))
        .pipe(browserSync.reload({ stream: true }));
});

gulp.task('templates:buildSiteTemplates', function () {
    return gulp.src(config.templates.buildFiles.site)
        .pipe(plumber())
        .pipe(ejs({
            bundlePath: {
                styles: paths.styles.bundle.replace(paths.dest + '/', '') + '/' + config.styles.bundleFileName,
                scripts: paths.scripts.bundle.replace(paths.dest + '/', '') + '/' + config.scripts.bundleFileName
            },
        }))
        .pipe(rename(function(path) {
            path.basename  = path.basename.replace('page-', '');
            path.extname = '.html';
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.templates.site))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('templates:buildCabinetTemplates', function () {
    return gulp.src(config.templates.buildFiles.cabinet)
        .pipe(plumber())
        .pipe(ejs({
            bundlePath: {
                styles: paths.styles.bundle.replace(paths.dest + '/', '') + '/' + config.styles.bundleFileName,
                scripts: paths.scripts.bundle.replace(paths.dest + '/', '') + '/' + config.scripts.bundleFileName
            },
        }))
        .pipe(rename(function(path) {
            path.basename  = path.basename.replace('page-', '');
            path.extname = '.html';
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.templates.cabinet))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('templates:buildArticlesTemplates', function () {
    return gulp.src(config.templates.buildFiles.articles)
        .pipe(plumber())
        .pipe(ejs({
            bundlePath: {
                styles: paths.styles.bundle.replace(paths.dest + '/', '') + '/' + config.styles.bundleFileName,
                scripts: paths.scripts.bundle.replace(paths.dest + '/', '') + '/' + config.scripts.bundleFileName
            },
        }))
        .pipe(rename(function(path) {
            path.basename  = path.basename.replace('page-', '');
            path.extname = '.html';
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.templates.articles))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('templates:build', [
    'templates:buildSiteTemplates',
    'templates:buildCabinetTemplates',
    'templates:buildArticlesTemplates'
]);

gulp.task('styles:buildSitePagesSCSS', function () {
    return gulp.src(config.styles.buildFiles.site)
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(csso())
        .pipe(sourcemaps.write('.'))
        .pipe(rename(function(path) {
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.styles.site))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('styles:buildCabinetPagesSCSS', function () {
    return gulp.src(config.styles.buildFiles.cabinet)
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(csso())
        .pipe(sourcemaps.write('.'))
        .pipe(rename(function(path) {
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.styles.cabinet))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('styles:buildArticlesPagesSCSS', function () {
    return gulp.src(config.styles.buildFiles.articles)
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(csso())
        .pipe(sourcemaps.write('.'))
        .pipe(rename(function(path) {
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.styles.articles))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('styles:buildBundleSCSS', function () {
    const bundleSCSSPath = paths.bundles + '/' + config.styles.bundleFileName,
          bundleSCSSFileName = 'scss.' + config.styles.bundleFileName;

    return gulp.src(config.styles.buildFiles.bundleSCSS)
        .pipe(newer(bundleSCSSPath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(concat(bundleSCSSFileName))
        .pipe(csso())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.styles.bundle))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('styles:buildBundleCSS', function () {
    const bundleCSSPath = paths.bundles + '/' + config.styles.bundleFileName,
          bundleCSSFileName = 'css.' + config.styles.bundleFileName;

    return gulp.src(config.styles.buildFiles.bundleCSS)
        .pipe(newer(bundleCSSPath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(autoprefixer())
        .pipe(concat(bundleCSSFileName))
        .pipe(csso())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.styles.bundle))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('styles:build', [
    'styles:buildSitePagesSCSS',
    'styles:buildCabinetPagesSCSS',
    'styles:buildArticlesPagesSCSS',
    'styles:buildBundleSCSS',
    'styles:buildBundleCSS'
]);

gulp.task('scripts:buildSitePagesTS', function() {
    return gulp.src(config.scripts.buildFiles.site)
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(typescript())
        .pipe(sourcemaps.write('.'))
        .pipe(rename(function(path) {
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.scripts.site))
        .pipe(browserSync.reload({ stream: true }))
});
gulp.task('scripts:buildCabinetPagesTS', function() {
    return gulp.src(config.scripts.buildFiles.cabinet)
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(typescript())
        .pipe(sourcemaps.write('.'))
        .pipe(rename(function(path) {
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.scripts.cabinet))
        .pipe(browserSync.reload({ stream: true }))
});
gulp.task('scripts:buildArticlesPagesTS', function() {
    return gulp.src(config.scripts.buildFiles.articles)
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(typescript())
        .pipe(sourcemaps.write('.'))
        .pipe(rename(function(path) {
            path.dirname = '';
        }))
        .pipe(gulp.dest(paths.scripts.articles))
        .pipe(browserSync.reload({ stream: true }))
});
gulp.task('scripts:buildBundleTS', function() {
    const bundleTSFilePath = paths.bundles + '/ts.' + config.scripts.bundleFileName,
          bundleTSFileName = 'ts.' + config.scripts.bundleFileName;

    return gulp.src(config.scripts.buildFiles.bundleTS)
        .pipe(newer(bundleTSFilePath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(typescript({
            outFile: bundleTSFileName
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.scripts.bundle))
        .pipe(browserSync.reload({ stream: true }))
});
gulp.task('scripts:buildBundleJS', function() {
    const bundleJSFilePath = paths.bundles + '/js.' + config.scripts.bundleFileName,
          bundleJSFileName = 'js.' + config.scripts.bundleFileName;

    return gulp.src(config.scripts.buildFiles.bundleJS)
        .pipe(newer(bundleJSFilePath))
        .pipe(plumber())
        .pipe(sourcemaps.init())
        .pipe(concat(bundleJSFileName))
        .pipe(uglify())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.scripts.bundle))
        .pipe(browserSync.reload({ stream: true }));
});
gulp.task('scripts:build', [
    'scripts:buildSitePagesTS',
    'scripts:buildCabinetPagesTS',
    'scripts:buildArticlesPagesTS',
    'scripts:buildBundleTS',
    'scripts:buildBundleJS'
]);

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
    'languages:build',
    'templates:build',
    'styles:build',
    'scripts:build',
    'images:build',
    'fonts:build',
]);

gulp.task('watch', function() {
    watch(config.languages.watchFiles, function() {
        gulp.start('languages:build');
    });

    watch(config.templates.watchFiles.site, function() {
        gulp.start('templates:buildSiteTemplates');
    });
    watch(config.templates.watchFiles.cabinet, function() {
        gulp.start('templates:buildCabinetTemplates');
    });
    watch(config.templates.watchFiles.articles, function() {
        gulp.start('templates:buildArticlesTemplates');
    });


    watch(config.styles.watchFiles.site, function() {
        gulp.start('styles:buildSitePagesSCSS');
    });
    watch(config.styles.watchFiles.cabinet, function() {
        gulp.start('styles:buildCabinetPagesSCSS');
    });
    watch(config.styles.watchFiles.articles, function() {
        gulp.start('styles:buildArticlesPagesSCSS');
    });
    watch(config.styles.watchFiles.bundleSCSS, function() {
        gulp.start('styles:buildBundleSCSS');
    });
    watch(config.styles.watchFiles.bundleCSS, function() {
        gulp.start('styles:buildBundleCSS');
    });


    watch(config.scripts.watchFiles.site, function() {
        gulp.start('scripts:buildSitePagesTS');
    });
    watch(config.scripts.watchFiles.cabinet, function() {
        gulp.start('scripts:buildCabinetPagesTS');
    });
    watch(config.scripts.watchFiles.articles, function() {
        gulp.start('scripts:buildArticlesPagesTS');
    });
    watch(config.scripts.watchFiles.bundleTS, function() {
        gulp.start('scripts:buildBundleTS');
    });
    watch(config.scripts.watchFiles.bundleJS, function() {
        gulp.start('scripts:buildBundleJS');
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

