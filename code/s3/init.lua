local s3 = require "resty.s3"

function init()
    local s3, err = s3:new("dalongapp", "dalongapp")
    final_url, err = s3:upload_url("https://nginx.org/nginx.png", "images", "70cFvXSh_Q1YnxGkpoWK1HF6hhy")
    if err~=nil then
      ngx.say(err)
    else 
    ngx.say(final_url);
    end
end

return init