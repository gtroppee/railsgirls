module ApplicationHelper
  def format_complete_date(date)
    date.strftime("%Y-%m-%d at %H:%M")
  end

  def devise_flash_override(key)
    case key
    when :notice 
      'success'
    when :alert 
      'warning'
    when :error 
      'danger'
    else
      ""
    end
  end
end
