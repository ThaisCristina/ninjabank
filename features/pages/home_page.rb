

class HomePage < SitePrism::Page
    set_url'/'

    element :alert_message,  '.sweet-alert'

    def get_alert
        return self.alert_message.text
     end
 end