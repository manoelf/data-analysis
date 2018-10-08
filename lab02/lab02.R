---
  title: "Regressão - OLS e Lasso"
  author: "Jose Manoel Ferreira"
  date: "Octuber 10, 2018"
  output: html_document
---
    
    
``` {R}
  # Tratamento de dados para preparar o arquivo de dados para o laboratório
  require(data.table)
  url='https://canvas.instructure.com/courses/1402758/files/69406530/download?download_frd=1'
  peleicoes.orig = read.table(url, header=TRUE)
  head(peleicoes.orig)
  # campos:
  # "sequencial_candidato" :(character) id do candidato
  # "nome": (character)
  # "uf": (character)
  # "partido": (character)
  # "quantidade_doacoes": (integer)
  # "quantidade_doadores": (integer) número de doadores diferentes
  # "total_receita": (double) soma em R$ das doações
  # "media_receita": (double) média das doações
  # "recursos_de_outros_candidatos/comites": (double) quantia em R$ das doações provenientes de outros candidatos ou comite partidário
  # "recursos_de_pessoas_fisicas": (double) quantia em R$ das doações provenientes de outros CPFs
  # "recursos_de_pessoas_juridicas": (double) quantia em R$ das doações provenientes de outros CNPJ
  # "recursos_proprios": (double) quantia em R$ das doações provenientes do próprio candidato
  # "recursos_de_partido_politico": (double) quantia em R$ das doações provenientes do partido político do candidato
  # "votos": (integer) variável alvo. Se refere ao número de votos na campanha de 2006 e 2010
  # "quantidade_despesas": (integer)
  # "quantidade_fornecedores": (integer) número de fornecedores/despesas diferentes
  # "total_despesa": (double) soma em R$ das despesas de campanha
  # "media_despesa": (double) média das despesas de campanha
  # "cargo": (character)
  # "Sexo":  (character)
  # "grau": (character) grau de instrução do candidato
  # "estado_civil": (character)
  # "ocupacao": (character) ocupação do candidato
  peleicoes = data.table(vol = exp(peleicoes.orig$lcavol),
                       peso = exp(peleicoes.orig$lweight),
                       idade = peleicoes.orig$age,
                       hpb = exp(peleicoes.orig$lbph),
                       ivs = peleicoes.orig$svi,
                       pc = exp(peleicoes.orig$lcp),
                       gleason = peleicoes.orig$gleason,
                       pgg45 = peleicoes.orig$pgg45,
                       train = peleicoes.orig$train, 
                       psa = exp(peleicoes.orig$lpsa)
  )
  head(pcancer)
  write.csv(pcancer, 'cancer_data.csv', row.names = FALSE)
```