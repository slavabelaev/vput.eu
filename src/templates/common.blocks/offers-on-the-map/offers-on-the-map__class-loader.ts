// Данный класс должен содержать методы:
// start,stop,title, init
// Таким образом он будет без ошибок работать в классах form, selects, buttons
var loaderBlock = function (image) {
    this.loadingBlock = '.ajax_block';
    this.title        = '.loaderTitle';
    this.started      = false;
    this.image        = image || '/images/loaders/vput/xxs.gif';
    this.id           = '';

    this.img$        = $('<div class="ajax_block_img"><img src="'+this.image+'"/></div>');
    this.title$      = $('<span class="'+this.title.replace('.', '')+'"></span>');
    this.bg$         = $('<div class="'+this.loadingBlock.replace('.', '')+'">&nbsp;</div>').css({'position': 'absolute', 'display':'none'});
    this.destination = 'body';

    this.useCircle = function(){
        this.img$.addClass('useCircle');
        return this;
    };

    this.init = function (object$) {
        if ( this.targetIsOnPage(object$) ) {
            if ( !this.issetTarget() ) {
                this.setTarget(object$);
            }

            this.id = 'loaderBlock-'+$('.ajax_block').length;

            this.img$
                .css('opacity', 1)
                .find('img')
                .attr('src', this.image);

            this.bg$
                .attr( 'id', this.id )
                .css(this.getParameters())
                .append(
                    this.img$.append(this.title$)
                ).appendTo(this.destination);

        }
        return this;
    };

    this.targetIsOnPage = function (object$) {
        return $('body').find(object$).length > 0;
    };

    this.issetTarget = function () {
        return this.target$ !== undefined ;
    };

    this.setTarget = function (object$) {
        if ( object$ === undefined ) {
            alert('You must specify the object which will be imposed loading');
        }
        this.target$ = object$;
        return this;
    };

    this.getTarget = function () {
        if ( $(this.target$).length === 0 ) {
            this.setTarget($(this.target$.selector));
            if ( $(this.target$).length === 0 ) {
                alert('Selector '+this.target$.selector+' choosed no one object');
                return this;
            }
        }
        return this.target$;
    };

    this.start = function () {

        if ( this.started ) {
            return;
        }

        this.started = true;

        this.bg$.css(this.getParameters());
        $('#'+this.id).fadeIn(300);

        this.getTarget().stop(true, true).css({ 'opacity': .3 });
        this.getTarget().find('select').attr('disabled', 'disabled');

        return this;
    };

    this.stop = function () {
        var that = this;
        $('#'+this.id).stop(true, true).hide(100, function(){
            $(this).css('display', 'none');
            that.getTarget().stop(true, true).css({ 'opacity': 1 });
            that.getTarget().find('select, input, textarea').removeAttr('disabled');
        });


        this.started = false;

        return this;
    };

    this.getParameters = function(){
        var object$ = this.getTarget();
        var parameters = {
            'width'  : object$.outerWidth(),
            'height' : object$.outerHeight(),
            'top'    : object$.offset().top,
            'left'   : object$.offset().left
        };
        return parameters;
    };

    this.title = function (title) {
        $(this.loadingBlock+' '+this.title).text(title);

        return this;
    };
};