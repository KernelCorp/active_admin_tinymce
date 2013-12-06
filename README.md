Active Admin Tinymce
====================
This is a wysiwyg html editor for the [Active Admin](http://activeadmin.info/) interface using [TinyMCE](http://www.tinymce.com/).
Editor supports inserting images. To upload files used [Active Admin Images](http://github.com/KernelCorp/activeadmin_images.git)

## Installation

Add the following to your `Gemfile`:

```ruby
gem 'activeadmin_tinymce'
```

Include styles in your `acive_admin.css`:

```scss
//= require admin_lib/modal
```

Include javascripts in your `activ_admin.js`:

```javascript
//= require tinymce
//= require admin_lib/init_tinymce
```


Then run the following to install the default intializer:

```bash
$ rails g active_admin:tinymce:install MODEL
```

Replace MODEL by the class name used for the applications images


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
