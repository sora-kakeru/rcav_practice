Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:number", { :controller => "calculations", :action => "square" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })
  get("/random/:number_1/:number_2", { :controller => "calculations", :action => "random" })
  get("/payment/:rate/:year/:amount", { :controller => "calculations", :action => "payment" })
end
