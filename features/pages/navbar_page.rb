
class NavbarPage < SitePrism::Page

    element :new_account, '.top-menu a[href$=add]'
    element :login, '.top-menu a[href$=login]'

    end 