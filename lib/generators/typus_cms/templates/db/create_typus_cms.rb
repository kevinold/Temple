class CreateTypusCms < ActiveRecord::Migration

  def self.up

    #
    #
    #

    create_table :pages do |t|
      t.string :title, :null => false
      t.string :permalink, :null => false
      t.text :body
      t.text :body_html
      t.text :excerpt
      t.text :excerpt_html
      t.boolean :status, :default => false, :null => false
      t.timestamps
    end

    add_index :pages, :permalink

    lorem_ipsum = <<-DATA
Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lacus arcu, 
malesuada sed, *cursus eget*, vulputate in, nunc. Aliquam libero sapien, 
euismod sit amet, pretium sit amet, vulputate nec, eros. Nunc sagittis 
est ac urna. **Morbi adipiscing pellentesque justo.** Nam placerat feugiat diam.
    DATA

    Page.create :title => 'Hello World', 
                :permalink => 'hello-world', 
                :body => lorem_ipsum, 
                :status => true

    #
    #
    #

    create_table :stylesheets do |t|
      t.string :name
      t.text :content
    end

    add_index :stylesheets, :name

    default_css = <<-CSS
* {}
    CSS

    Stylesheet.create :name => 'default', 
                      :content => default_css

    reset_css = <<-CSS
body {font:13px arial,helvetica,clean,sans-serif;*font-size:small;*font:x-small;}table {font-size:inherit;font:100%;}select, input, textarea {font:99% arial,helvetica,clean,sans-serif;}pre, code {font:115% monospace;*font-size:100%;}body * {line-height:1.22em;}
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td{margin:0;padding:0;}table{border-collapse:collapse;border-spacing:0;}fieldset,img{border:0;}address,caption,cite,code,dfn,em,strong,th,var{font-style:normal;font-weight:normal;}/*ol,ul {list-style:none;}*/caption,th {text-align:left;}h1,h2,h3,h4,h5,h6{font-size:100%;font-weight:normal;}q:before,q:after{content:'';}abbr,acronym {border:0;}
    CSS

    Stylesheet.create :name => 'reset', 
                      :content => reset_css

    #
    #
    #

    create_table :content_blocks do |t|
      t.string :block, :null => false
      t.text :content, :null => false
    end

    add_index :content_blocks, :block

    create_table :flat_pages do |t|
      t.string :title
      t.string :permalink
      t.text :body
      t.text :body_html
      t.boolean :status
      t.timestamps
    end

    add_index :flat_pages, :permalink

  end

  def self.down
    drop_table :pages
    drop_table :stylesheets
    drop_table :content_blocks
    drop_table :flat_pages
  end

end