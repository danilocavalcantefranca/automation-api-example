#language:pt

@consultar_api_publicas
Funcionalidade: Consultar endpoint que retorna apis públicas

@consultar_api_google
Cenário: Consultar o endpoints que retorna as apis públicas e retornar todas as apis que são do Google
  Dado que consulto o endpoint que retorna todas as apis públicas
  Quando validar o retorno do endpoint validando as apis que são do "Google"
  Então devo ter retornado apenas as apis que são do "Google"