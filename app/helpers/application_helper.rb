module ApplicationHelper
  def markdown_init
    options = {
      filter_html:     true,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }
    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }
    renderer = Redcarpet::Render::HTML.new(options)
    @markdown_engine = Redcarpet::Markdown.new(renderer, extensions)
  end

  def markdown(text)
    @markdown_engine || markdown_init
    @markdown_engine.render(text).html_safe
  end
end
