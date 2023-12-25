module JekyllPluginHooks
    def lazy_load_image
      Proc.new do |webpage| 
        webpage.output.gsub!(%r{<img (.*?)>}) { |match| '<div class="lazy-image-wrapper">' + match + '</div>' }
        webpage.output.gsub!('<img ','<img loading="lazy"')
      end
    end
  
    module_function :lazy_load_image

    Jekyll::Hooks.register(:documents, :post_render, &lazy_load_image)
    Jekyll::Hooks.register(:pages, :post_render, &lazy_load_image)
end