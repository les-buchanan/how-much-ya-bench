module ApplicationHelper
  def bootstrap_devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| %Q|toastr.error("#{msg}");| }.join

    html = <<-HTML
      <script>
        (function($){
    HTML

    html << messages

    html += <<-HTML
        }(jQuery));
      </script>
    HTML

    html.html_safe
  end
end
