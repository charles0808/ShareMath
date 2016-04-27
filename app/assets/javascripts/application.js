// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require tether
//= require bootstrap-sprockets
//= require_tree .

window.MathJax = {
    jax: ['input/TeX', 'output/HTML-CSS'],
    tex2jax: {
        ignoreClass: 'no-mathjax',
        inlineMath: [ ['$','$'] ]
        // processEscapes: true
    },
    showProcessingMessages: false
};

function ShareMathMain() {
    marked.setOptions({
        renderer: new marked.Renderer(),
        gfm: true,
        tables: true,
        break: false,
        pedantic: false,
        sanitize: false,
        smartLists: true,
        smartypants: false
    });
    if ($('.formulas-list').length) {
        setupFormulasList();
    }
    if ($('.formula-show').length) {
        setupFormulaShow();
    }
    if ($('form.edit-formula').length) {
        setupExpressionEditor();
        setupContentEditor();
    }
}

$(document).on('turbolinks:load', ShareMathMain);
