Dado('que consulto o endpoint que retorna todas as apis públicas') do
  @return_consult_api = @service.call(ConsultApiPublic).consult_apis_publics
end

Quando('validar o retorno do endpoint validando as apis que são do {string}') do |desired_api|
  @return_apis_throught_text_sent = Array.new
  @return_consult_api['entries'].size.times{|count| @return_apis_throught_text_sent << @return_consult_api['entries'][count] if @return_consult_api['entries'][count]['API'].upcase.include? (desired_api.upcase)}
end

Então('devo ter retornado apenas as apis que são do {string}') do |desired_api|
  @return_apis_throught_text_sent.each do |returned_apis|
    expect(returned_apis['API'].upcase).to include (desired_api.upcase)
  end
end