module ApplicationHelper
  def sidebar_link(path, name, nav)
    content_tag :li, class: ("active" if @current_nav == nav) do
      link_to path do
        "#{name} #{'<span class="sr-only">(current)</span></a>' if @current_nav == nav}".html_safe
      end
    end
  end
end
