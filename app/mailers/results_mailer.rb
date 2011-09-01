class ResultsMailer < ActionMailer::Base
  default :from => "bvtapp@zynga.com"
  
  def send_bvt_result( email_list, test_result)
    @test_result = test_result
    #mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
    subject_line = "BVT Results for Server:#{@test_result.server_rev} Client:#{@test_result.client_rev} #{@test_result.result}ed"
    @email_list = EmailList.find_by_name(email_list)
    @email_list_items = @email_list.email_list_items
    @email_list_items.each do |list_item|
      m = mail(:to => list_item.email, :subject => subject_line )
      m.deliver
    end
  end
  
  def send_test_mail
    mail(:to => "bvtapp@gmail.com", :subject => "Test Email")
  end
  
end
