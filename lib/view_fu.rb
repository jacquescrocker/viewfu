require "view_fu/tag_helper"
require "view_fu/meta_helper"
require "view_fu/browser_detect"

if defined?(Rails) and defined?(ActionView)
  ActionView::Base.send :include, ViewFu::MetaHelper
  ActionView::Base.send :include, ViewFu::TagHelper
  ActionView::Base.send :include, ViewFu::BrowserDetect
end
  