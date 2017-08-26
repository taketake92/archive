class InstagramController < ApplicationController
	require "instagram"
  require "json"
  require "rest-client"
 
　## access_token発行用のURLへのリダイレクト。instagra-ruby-gemのauthorize_urlメソッドを使っています。
  def token
    connect_url = "https://study-message-board.herokuapp.com/"
    redirect_to Instagram.authorize_url(:redirect_uri => connect_url) and return
  end
  
  ## postで所定のURLに情報を送信し、返ってきたjsonからaccess_tokenを取得し、タイムラインを表示する
  def get_token_timeline
    connect_url = "https://study-message-board.herokuapp.com/"
 
    ## 下記要素をpostで送ると、access_tokenを含んだjsonが返ってきます。
    res = RestClient.post 'https://api.instagram.com/oauth/access_token', {
      client_id: 'あなたのclient_id',
      client_secret: 'あなたのclient_secret',
      grant_type: 'authorization_code',
      redirect_uri: connect_url,
      code: params[:code]
    }
    
    json = JSON.parse(res.body)
    token = json['access_token']
    
    ## jsonにはuser_idのデータも含まれます。
    ## user_id = json['user']['id'] でuser_idを取得すると、該当するユーザーのタイムラインを取得できます。
    ## 今は自分のタイムラインを表示するので使いません。
    
    ## タイムラインの取得には、下記URLにgetでリクエストを送りましょう。
    feed_url = "https://api.instagram.com/v1/users/self/feed?access_token="
    
    ## タイムラインの投稿取得数を指定できます。上限100のはず。
    count = "&count=100"
    get_feed_url = feed_url + token + count
    uri = URI.parse(get_feed_url)
    http = Net::HTTP.new(uri.host, uri.port)
 
    ## ここ落とし穴なんですが、instagram apiはSSL通信を前提としているので、httpsで通信するように記述しないとjsonデータが返ってきません。
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    req = Net::HTTP::Get.new(uri.request_uri)
    res = http.request(req)
 
    ## 後はjsonのデータを取得するだけ。
    feed_json = JSON.parse(res.body)
    puts feed_json    
  end
end
