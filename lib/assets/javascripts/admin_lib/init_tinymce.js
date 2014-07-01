//= require ./modal
//= require ./modal_controller
//= require tinymce
init =  function() {
    if ($('textarea').length > 0) {
        window.modal = ''
        $.ajax({
            type: 'get',
            url: '/modal',
            success: function(response){
               $('form').append(response)
               window.modal = new(Modal);
            }
        })
    }

    tinymce.init({
        selector: "textarea:not([data-tinymce])",
        width: '76%',
        height: 500,
        plugins: [
            "advlist autolink lists link image charmap print preview anchor",
            "searchreplace visualblocks code fullscreen",
            "insertdatetime media table contextmenu paste"
        ],
        toolbar: "insertfile vundo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
        setup : function(ed) {
            // Add a custom button
            ed.addButton('insertfile', {
                title : 'Insert Image',
                image : 'http://lorempixel.com/100/100/cats',
                onclick : function() {
                    modal.on_show( function(){
                        create_modal_obj(ed);
                    });
                    modal.open();
                    ed.focus();
                }
            });
        }
    });
};

remove = function() {
    tinymce.remove()
    return
};
$(document).on('page:load', init);
$(document).on('page:before-change', remove)
$(document).ready(init);
