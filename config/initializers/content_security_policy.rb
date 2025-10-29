# Define an application-wide content security policy
# For further information see the Rails guide
# https://guides.rubyonrails.org/security.html#content-security-policy

if Rails.application.config.respond_to?(:content_security_policy)
  Rails.application.configure do
    config.content_security_policy do |policy|
      policy.default_src :self, :https
      policy.font_src    :self, :https, :data
      policy.img_src     :self, :https, :data
      policy.object_src  :none
      policy.script_src  :self, :https
      policy.style_src   :self, :https, :unsafe_inline
    end
  end
end
