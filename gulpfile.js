var gulp = require('gulp'),
   /* sass = require('gulp-sass'),*/
    coffee = require('gulp-coffee'),
    jade = require('gulp-jade');
    autoprefixer = require("gulp-autoprefixer"),
    minifycss = require('gulp-minify-css'),
    uglify = require('gulp-uglify'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    notify = require('gulp-notify'),
    del = require('del'),
    svgSymbols = require('gulp-svg-symbols');

/*gulp.task('styles',function(){
  return gulp.src('./src/sass/*.scss')
    .pipe(sass())
    .pipe(autoprefixer('last 2 version'))
    .pipe(concat('site.css'))
    .pipe(gulp.dest('./build/css'))
    .pipe(notify('Styles task complete'))
})

gulp.task('css',['styles'],function(cb){
  gulp.src(['./vendor/css/*.css','./build/css/site.css'])  
    .pipe(concat('site.css'))
    .pipe(gulp.dest('./build/css'))
    .pipe(rename({suffix: '.min'}))
    .pipe(minifycss())
    .pipe(gulp.dest('./build/css'))
    .pipe(notify('Css task complete'))
})*/

gulp.task('scripts',function(){
  return gulp.src('./src/coffee/*.coffee')
    .pipe(coffee({bare: true}))
    .pipe(concat('site.js'))
    .pipe(gulp.dest('./build/js'))
    .pipe(notify('Scripts task complete'))
})



gulp.task('js',['scripts'],function(){
  gulp.src(['./vendor/js/*.js','./build/js/site.js'])  
    .pipe(concat('site.js'))
    .pipe(gulp.dest('./build/js'))
    .pipe(uglify())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('./build/js'))
    .pipe(notify('Js task complete'))

})

gulp.task('sprites', function () {
  return gulp.src('./vendor/svg/*.svg')
    .pipe(svgSymbols({
      svgId: 'icon-%f',
      className:'.icon-%f'
    }))
    .pipe(gulp.dest('./build/svg'));
});


gulp.task('templates', function() {
  var YOUR_LOCALS = {};
 
  gulp.src('./views/**/*.jade')
    .pipe(jade({
      locals: YOUR_LOCALS
    }))
    .pipe(gulp.dest('./build'))
    .pipe(notify("Templates task complete"))
});




gulp.task('clean',function(cb){
  del(['./build/js','./build/svg','./build/*.html'],cb)
})


gulp.task('default',['clean'],function(){
  gulp.start('js','sprites','templates');
})

gulp.task('watch',function(){
  /*gulp.watch('./src/sass/*.scss',['css']);*/
  gulp.watch('./src/coffee/*.coffee',['js']);
  gulp.watch('./views/*.jade',['templates']);
})

