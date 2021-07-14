class ConsultApiPublic

  include HTTParty

  base_uri HOSTS['host-api-public']
  
  headers 'Content-Type' => "application/json"

  def consult_apis_publics(path = PATHS['path']['entries'])
    self.class.get(path)
  end

  
end