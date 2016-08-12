require 'rubygems'
require 'appium_lib'
capabilities = {
	'appium-version': '1.0',
	'platformName': 'Android',
	'platformVersion': '6.0',
	'app': '/Users/Wzd/Downloads/Comic_2.0_20160811.apk',
}

server_url = "http://127.0.0.1:4723/wd/hub"

Appium::Driver.new(caps: capabilities).start_driver
Appium.promote_appium_methods Object

wait {button_exact('不再提醒').click}

wait {button_exact('不再提醒').click}

wait {text_exact('我的漫咖').click}
wait {text_exact('我的漫咖').click}

wait {text_exact('登錄漫咖').click}
wait {text_exact('登錄漫咖').click}

wait {textfield_exact('千尋號/郵箱').type '2155979'}
wait {id('com.qianxun.comic:id/login_pwd_edit_view').type 'aaaa'}

wait {id('com.qianxun.comic:id/login_btn_view').click}

text_exact '兌換福利'

driver_quit
