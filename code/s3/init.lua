local s3 = require "resty.s3"

function init()
    local s3, err = s3:new("dalongapp", "dalongapp")
    final_url, err = s3:upload_url("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1753254544,2672940031&fm=26&gp=0.jpg", "images", "70cFvXSh_Q1YnxGkpoWK1HF6hhy")
    ngx.say(final_url);
end

return init