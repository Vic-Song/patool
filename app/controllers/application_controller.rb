class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!


#for authenticating user or admin
 def is_admin?
   redirect_to home_index_path, alert: '请以管理员身份登陆后进行操作！' unless user_signed_in?&&current_user.admin?
 end
 def is_user?
    redirect_to home_index_path, alert: '请登录后进行操作！'  unless user_signed_in?
 end

$n2w = {1 =>'one', 
            2 =>'two',
            3 =>'three',
            4 => 'four',
            5 => 'five',
            6 => 'six',
            7 => 'seven',
            8 => 'eight',
            9 => 'night',
            10 => 'ten',                        
            11 => 'eleven' ,
            12 => 'twelve',
            13 => 'thirteen',
            14 => 'fourteen',
            15 => 'fifteen',
            16 => 'sixteen',
            17 => 'seventeen',
            18 => 'eighteen',
            19 => 'nighteen',
            20 => 'twenty',
            21 => 'twentyone',
            22 => 'twentytwo',
            23 => 'twentythree',
            24 => 'twentyfour',
            25 => 'twentyfive',
            26 => 'twentysix',
            27 => 'twentyseven',
            28 => 'twentyeight',
            29 => 'twentynine',
            30 => 'thirty',
            31 => 'thirtyone',
            32 => 'thirtytwo',
            33 => 'thirtythree',
            34 => 'thirtyfour',
            35 => 'thirtyfive',
            36 => 'thirtysix',
            37 => 'thirtyseven',
            38 => 'thirtyeight',
            39 => 'thirtynine',
            40 => 'fourty',
            41 => 'fourtyone',
            42 => 'fourtytwo',
            43 => 'fourtythree',
            44 => 'fourtyfour',
            45 => 'fourtyfive',
            46 => 'fourtysix',
            47 => 'fourtyseven',
            48 => 'fourtyeight',
            49 => 'fourtynine',
            50 => 'fifty'  }

  
end
