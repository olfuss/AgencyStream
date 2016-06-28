#require win32/autogui
#include Autogui::Input
#class PowerManageMU < Autogui::Application
#		super :name => "PowerQuoteMU", :title => "PowerQuoteMU"
#	end
#	def edit_window
#		main_window.children.find {|w| w.window_class == 'Edit'}
#	end
#end

 require 'win32/autogui'
    include Autogui::Input

    class Calculator < Autogui::Application
      def initialize
        super :name => "calc", :title => "Calculator"
      end
      def edit_window
        main_window.children.find {|w| w.window_class == 'Edit'}
      end
    end