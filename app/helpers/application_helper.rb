module ApplicationHelper
  def format_complete_date(date)
    date.strftime("%d/%m/%Y à %H:%M")
  end
end
