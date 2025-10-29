module ApplicationHelper
  def flash_class(key)
    {
      notice: "flash-notice",
      alert: "flash-alert"
    }[key.to_sym] || "flash-#{key}"
  end
end
