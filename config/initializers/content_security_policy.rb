Rails.application.config.content_security_policy do |policy|
  policy.default_src :self, :https
  policy.font_src    :self, :https, :data
  policy.img_src     :self, :https, :data
  policy.object_src  :none
  policy.style_src   :self, :https, :unsafe_inline
  policy.script_src  :self, :https
  policy.connect_src :self, :https
end
Rails.application.config.content_security_policy_report_only = false
