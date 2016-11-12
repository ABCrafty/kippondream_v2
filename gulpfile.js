var gulp = require('gulp'); // j'appelle le module gulp
var minifyCss = require('gulp-minify-css');
var concat = require('gulp-concat');
var notify = require("gulp-notify");
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');
var size = require('gulp-size');
//var uncss = require('gulp-uncss');
var sourcemaps = require('gulp-sourcemaps');
// pour lancer la commande gulp malgré l'erreur avec autoprefixer
var es6Promise = require('es6-promise').polyfill();

// tache lancée par défaut avec la ligne de commande gulp
gulp.task('default', ['css', 'sass', 'js'], function() {
    gulp.watch(['./app/assets/javacripts/*.js'], ['js']);
    gulp.watch(['./app/assets/stylesheets/*.css'], ['css']);
    gulp.watch(['./app/assets/stylesheets/sass/**/*.scss'], ['sass']);
    // watch permet de "watcher", observer les changements de fichiers
    // CSS du dossier CSS et relancer la tâche "css"

    console.log("Ma tâche par default...");
});

// crée une tâche CSS
gulp.task('css', function() {
    console.log("Ma tâche pour la CSS");
    //1 gulp.src () => chercher un ou plusieurs fichiers sources
    return gulp.src('./app/assets/stylesheets/application.css') //src = source de fichier(s)
    .pipe(minifyCss()) // compresser ma CSS par le module gulp-minify-css
    .pipe(concat('kd.css'))
    .pipe(size())
    // .pipe(uncss({
    //   html: ['./index.html']
    // }))
    // gulp dest +> sert à préciser le répertoire de destination
    .pipe(gulp.dest('app/assets/stylesheets/dist/css/')) // permet d'envoyer le fichier minimifié dans le répertoire dist/css
    .pipe(notify("CSS compressée, et concatenée!"))
});

// crée une tache SASS
gulp.task('sass', function() {
    return gulp.src('app/assets/stylesheets/sass/main.scss') //src = source de fichier(s)
    .pipe(sass().on('error', sass.logError)) // compiler du SASS en CSS
    .pipe(sourcemaps.init())
    .pipe(sourcemaps.write('./maps'))
    // .pipe(minifyCss()) // compresser ma CSS par le module gulp-minify-css
    .pipe(concat('kd-sass.css'))
    .pipe(size())
    // .pipe(uncss({
    //   html: ['index.html']
    // }))
    .pipe(gulp.dest('app/assets/dist/css/')) // permet d'envoyer le fichier minimifier dans le répertoire dist/css
    .pipe(notify("SASS compilée compressée, et concatenée!"));
});

// crée une tâche js js
gulp.task('js', function() {
  return gulp.src('./app/assets/javascripts/*.js')
    .pipe(concat('app.min.js'))
    // .pipe(uglify()) //minify js
    .pipe(size())
    .pipe(gulp.dest('app/assets/dist/js'))
    .pipe(notify("JS Modifié"))
});
