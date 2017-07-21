module Api
	module V1
                class RecordsController < ApplicationController
                          respond_to :json

                        def index
                                @one = params["1"]
                                @two = params["2"]
                                @three = params["3"]
                                @four = params["4"]
                                @five = params["5"]
                                @six = params["6"]
                                @seven = params["7"]
                                @eight = params["8"]
                                @night = params["9"]
                                @ten = params["10"]
                                @eleven = params["11"]
                                @twelve = params["12"]
                                @thirteen = params["13"] 
                                @fourteen = params["14"] 
                                @fifteen = params["15"] 
                                @sixteen = params["16"] 
                                @seventeen = params["17"] 
                                @eighteen = params["18"] 
                                @nighteen = params["19"] 
                                @twenty = params["20"]
                                @twentyone = params["21"] 
                                @twentytwo = params["22"] 
                                @twentythree = params["23"] 
                                @twentyfour = params["24"] 
                                @twentyfive = params["25"] 
                                @twentysix = params["26"] 
                                @twentyseven = params["27"] 
                                @twentyeight = params["28"] 
                                @twentynine = params["29"] 
                                @thirty = params["30"]
                                @thirtyone  = params["31"]
                                @thirtytwo = params["32"] 
                                @thirtythree = params["33"] 
                                @thirtyfour = params["34"] 
                                @thirtyfive = params["35"] 
                                @thirtysix = params["36"] 
                                @thirtyseven = params["37"] 
                                @thirtyeight = params["38"] 
                                @thirtynine = params["39"] 
                                @fourty = params["40"]
                                @fourtyone = params["41"] 
                                @fourtytwo = params["42"] 
                                @fourtythree = params["43"] 
                                @fourtyfour = params["44"] 
                                @fourtyfive = params["45"] 
                                @fourtysix = params["46"] 
                                @fourtyseven = params["47"] 
                                @fourtyeight = params["48"] 
                                @fourtynine = params["49"] 
                                @fifty = params["50"]



                                @paper_id = params["paper_id"]
                                @user_id = params["user_id"]

                                # respond_with params
 

                                # @result = Result.new(one:params[:1],two:params[:2],three:params[:3],paper_id:params[paper_id],survey_id:params[survey_id])
                               
                                @result = Result.new
                                @result.update_attributes({'one'=>@one, 
                                                                            'two'=>@two,
                                                                            'three'=>@three,
                                                                            'four'=>@four,
                                                                            'five'=>@five,
                                                                            'six'=>@six,
                                                                            'seven'=>@seven,
                                                                            'eight'=>@eight,
                                                                            'night'=>@night,
                                                                            'ten'=>@ten,                        
                                                                            'eleven' => @eleven,
                                                                            'twelve' => @twelve,
                                                                            'thirteen' => @thirteen,
                                                                            'fourteen' => @fourteen,
                                                                            'fifteen' => @fifteen,
                                                                            'sixteen' => @sixteen,
                                                                            'seventeen' => @seventeen,
                                                                            'eighteen' => @eighteen,
                                                                            'nighteen' => @nighteen,
                                                                            'twenty' => @twenty,
                                                                            'twentyone' => @twentyone,
                                                                            'twentytwo' => @twentytwo,
                                                                            'twentythree' => @twentythree,
                                                                            'twentyfour' => @twentyfour,
                                                                            'twentyfive' => @twentyfive,
                                                                            'twentysix' => @twentysix,
                                                                            'twentyseven' => @twentyseven,
                                                                            'twentyeight' => @twentyeight,
                                                                            'twentynine' => @twentynine,
                                                                            'thirty' => @thirty,
                                                                            'thirtyone' => @thirtyone,
                                                                            'thirtytwo' => @thirtytwo,
                                                                            'thirtythree' => @thirtythree,
                                                                            'thirtyfour' => @thirtyfour,
                                                                            'thirtyfive' => @thirtyfive,
                                                                            'thirtysix' => @thirtysix,
                                                                            'thirtyseven' => @thirtyseven,
                                                                            'thirtyeight' => @thirtyeight,
                                                                            'thirtynine' => @thirtynine,
                                                                            'fourty' => @fourty,
                                                                            'fourtyone' => @fourtyone,
                                                                            'fourtytwo' => @fourtytwo,
                                                                            'fourtythree' => @fourtythree,
                                                                            'fourtyfour' => @fourtyfour,
                                                                            'fourtyfive' => @fourtyfive,
                                                                            'fourtysix' => @fourtysix,
                                                                            'fourtyseven' => @fourtyseven,
                                                                            'fourtyeight' => @fourtyeight,
                                                                            'fourtynine' => @fourtynine,
                                                                            'fifty' => @fifty,
                                                                            'paper_id'=>@paper_id,
                                                                            'user_id'=>@user_id})
                                if @result.save
                                      redirect_to home_index_path, alert:'结果提交成功！'
                                else
                                    	redirect_to home_index_path, alert:'结果提交失败！'
                                end
                        end

                        # def desuser
                        #         @deluser = User.find(params[:userid])
                        #          @deluser.destroy
                        #          redirect_to   home_admin_path, alert:'User deleted successfully!'
                        #         respond_with @deluser.email
                        # end

                        def show
                                #@userinfo = "#{params[:userinfo]}"
                                #@review = Review.find_by_userinfo(@userinfo)
                                #float avg
                                #avg = (@review.one+@review.two+@review.three+@$
                                #a = [@review.one,@review.two,@review.three,@re$
                                #respond_with a
                            if(params[:email]&&params[:password])
                                @user = User.new(email:params[:email],password:params[:password])
                                # respond_to do |format|
                                if @user.save
                                    redirect_to home_admin_path, alert:'用户创建成功！'
                                    # format.json{"success"}
                                else
                                    # format.html{}
                                    # format.json {"error"}
                                    redirect_to home_admin_path, alert:'用户创建失败！'
                                end
                            elsif (params[:userid]&&params[:func])
                                @deluser = User.find(params[:userid])
                                if params[:func] == 'del'
                                    @deluser.destroy
                                    redirect_to   home_admin_path, alert:'用户删除成功！'
                                elsif params[:func] == 'reset'
                                    @deluser.update_attributes(password:'123456')
                                    redirect_to   home_admin_path, alert:'重置密码成功！'
                                elsif params[:func] == 'newpwd'
                                    @deluser.update_attributes(password:params[:password])
                                    if @deluser.save
                                        redirect_to   new_user_session_path, alert:'密码修改成功，请重新登录！'
                                    else
                                        redirect_to   home_userpanel_path, alert:'密码修改失败！'
                                    end
                                end
                            end
                        end
                end
        end
end

