require "view_fu/tag_helper"
require "view_fu/meta_helper"
require "view_fu/browser_detect"

# make sure we're running inside Merb
if defined?(Merb::Plugins)
  # Merb gives you a Merb::Plugins.config hash...feel free to put your stuff in your piece of it
  Merb::Plugins.config[:viewfu] = {
    :tags => true,
    :meta => true,    
    :browser_detect => true
  }
  
  Merb::BootLoader.after_app_loads do
    Merb::Plugins.config[:viewfu] ||= {}
    Merb::Controller.send(:include, ViewFu::MetaHelper) if Merb::Plugins.config[:viewfu][:meta]
    Merb::Controller.send(:include, ViewFu::TagHelper) if Merb::Plugins.config[:viewfu][:tags]
    Merb::Controller.send(:include, ViewFu::BrowserDetect) if Merb::Plugins.config[:viewfu][:browser_detect]
  end
end

if defined?(Rails) and defined?(ActionView)
  ActionView::Base.send :include, ViewFu::MetaHelper
  ActionView::Base.send :include, ViewFu::TagHelper
  ActionView::Base.send :include, ViewFu::BrowserDetect
end
  